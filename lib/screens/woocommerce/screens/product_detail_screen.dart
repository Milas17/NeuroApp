import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kivicare_flutter/components/cached_image_widget.dart';
import 'package:kivicare_flutter/components/disabled_rating_bar_widget.dart';
import 'package:kivicare_flutter/components/loader_widget.dart';
import 'package:kivicare_flutter/components/no_data_found_widget.dart';
import 'package:kivicare_flutter/components/price_widget.dart';
import 'package:kivicare_flutter/main.dart';
import 'package:kivicare_flutter/model/woo_commerce/common_models.dart';
import 'package:kivicare_flutter/model/woo_commerce/product_detail_model.dart';
import 'package:kivicare_flutter/network/shop_repository.dart';
import 'package:kivicare_flutter/screens/patient/screens/web_view_payment_screen.dart';
import 'package:kivicare_flutter/screens/shimmer/components/shimmer_component.dart';
import 'package:kivicare_flutter/screens/shimmer/screen/product_detail_shimmer_screen.dart';
import 'package:kivicare_flutter/screens/woocommerce/component/product_component.dart';
import 'package:kivicare_flutter/screens/woocommerce/component/product_review_component.dart';
import 'package:kivicare_flutter/screens/woocommerce/screens/cart_screen.dart';
import 'package:kivicare_flutter/screens/woocommerce/screens/product_list_screen.dart';
import 'package:kivicare_flutter/screens/woocommerce/screens/wish_list_screen.dart';
import 'package:kivicare_flutter/utils/app_common.dart';
import 'package:kivicare_flutter/utils/colors.dart';
import 'package:kivicare_flutter/utils/common.dart';
import 'package:kivicare_flutter/utils/constants/app_constants.dart';
import 'package:kivicare_flutter/utils/constants/woocommerce_constants.dart';
import 'package:kivicare_flutter/utils/extensions/string_extensions.dart';
import 'package:kivicare_flutter/utils/extensions/widget_extentions.dart';
import 'package:kivicare_flutter/utils/images.dart';
import 'package:nb_utils/nb_utils.dart' hide ReadMoreText, TrimMode;
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatefulWidget {
  final int productId;
  final VoidCallback? refreshCall;

  const ProductDetailScreen({Key? key, required this.productId, this.refreshCall}) : super(key: key);

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

ProductDetailModel mainProduct = ProductDetailModel();

ProductDetailModel cartProduct = ProductDetailModel();

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  Future<ProductDetailModel>? future;
  ProductDetailModel productData = ProductDetailModel();
  bool isFetched = false;
  bool isLoading = false;

  bool isWishListed = false;
  bool isError = false;

  PageController pageController = PageController();
  List<GroupProductModel> groupProductList = [];

  int selectedIndex = -1;

  int count = 1;

  @override
  void initState() {
    super.initState();
    init();
  }

  void init({bool showLoader = false}) async {
    if (showLoader) appStore.setLoading(true);
    if (isFetched) {
      setState(() {
        isFetched = false;
      });
    }
    if (isError) {
      setState(() {
        isError = false;
      });
    }

    future = getProductDetail(productId: widget.productId.validate()).then((value) {
      productData = value;
      isFetched = true;
      isWishListed = productData.isAddedWishlist.validate();

      if (value.type == ProductTypes.grouped) {
        appStore.setLoading(true);

        // value.groupedProducts.validate().forEach((productId) {
        //   groupProductList.add(GroupProductModel(id: productId, product: null));
        //   // product is optional, you can fetch details later if required
        // });
        value.groupedProducts.validate().forEach((gp) {
          groupProductList.add(GroupProductModel(id: gp.id!, product: gp));
        });

        if (value.id == widget.productId) {
          productData = value;
        }

        setState(() {});
      }

      if (value.type == ProductTypes.variable) {
        mainProduct = value;
        value.attributes.validate().forEach((attribute) {
          if (attribute.variation == true && attribute.options != null) {
            attribute.options!.insert(0, '${locale.chooseAnOption}');
          }
        });

        value.variations.validate().forEach((e) {
          groupProductList.add(GroupProductModel(id: e.id.validate(), product: e));
          if (e.id == widget.productId) {
            productData = e;
          }
        });
      }

      setState(() {});
      appStore.setLoading(false);
      return value;
    }).catchError((e) {
      appStore.setLoading(false);
      setState(() {
        isError = true;
      });
      toast(e.toString());
      throw e;
    });
  }

  Future<void> removeFromFav() async {
    isWishListed = !isWishListed;
    setState(() {});

    await removeFromWishlist(productId: productData.id.validate()).then((value) {
      widget.refreshCall?.call();
      toast(value.message);
    }).catchError((e) {
      isWishListed = true;
      toast(e.toString());
      setState(() {});
    });
  }

  Future<void> addToFavorite() async {
    isWishListed = !isWishListed;
    setState(() {});

    await addToWishlist(productId: productData.id.validate()).then((value) {
      widget.refreshCall?.call();
      toast(value.message);
    }).catchError((e) {
      isWishListed = false;
      setState(() {});
      toast(e.toString());
    });
  }

  Future<void> addToCart() async {
    if (count == 0) {
      toast(locale.lblPleaseAddQuantity);
    } else {
      if (productData.isAddedCart.validate()) {
        CartScreen().launch(context).then((_) => init(showLoader: true));
      } else {
        if (productData.stockStatus == 'instock') {
          if (productData.type == ProductTypes.external) {
            WebViewPaymentScreen(
              isProductDetail: true,
              checkoutUrl: productData.externalUrl.validate(),
            ).launch(context, pageRouteAnimation: pageAnimation, duration: pageAnimationDuration);
          } else {
            appStore.setLoading(true);
            await addItemToCart(productId: productData.id.validate(), quantity: count).then((value) {
              toast(locale.successfullyAddedToCart);
              appStore.setLoading(false);
              shopStore.setCartCount(value.items.validate().length);
              productData.isAddedCart = true;
              setState(() {});
            }).catchError((e) {
              appStore.setLoading(false);
              toast(e.toString(), print: true);
            });
          }
        }
      }
    }
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  void dispose() {
    appStore.setLoading(false);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: ((BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: context.height() * 0.5,
              systemOverlayStyle: defaultSystemUiOverlayStyle(
                context,
                statusBarIconBrightness: Brightness.dark,
              ),
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: SizedBox(
                  height: context.height() * 0.5,
                  width: context.width(),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      if (productData.images.validate().isNotEmpty)
                        PageView.builder(
                          controller: pageController,
                          itemCount: productData.images.validate().length,
                          itemBuilder: (BuildContext context, int index) {
                            return CachedImageWidget(
                              url: productData.images.validate()[index].src.validate(),
                              height: context.height() * 0.5,
                              width: context.width(),
                              fit: BoxFit.cover,
                            );
                          },
                          onPageChanged: (value) {
                            if (productData.type == ProductTypes.grouped) {}
                          },
                        )
                      else
                        CachedImageWidget(
                          url: ic_noProduct,
                          height: context.height() * 0.5,
                          width: context.width(),
                          fit: BoxFit.cover,
                        ).visible(
                          (!isError && isFetched),
                          defaultWidget: ShimmerComponent(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 350),
                              decoration: shimmerBoxInputDecoration(borderRadiusValue: 0),
                            ),
                          ),
                        ),
                      Positioned(
                        top: 42,
                        left: isRTL ? 16 : null,
                        right: isRTL ? null : 16,
                        child: ic_wishList_cart.iconImageColored(color: appSecondaryColor).appOnTap(() {
                          WishListScreen(isFromProductDetail: true).launch(context, pageRouteAnimation: pageAnimation, duration: pageAnimationDuration);
                        }),
                      ),
                      Positioned(
                        bottom: 8,
                        child: DotIndicator(
                          indicatorColor: primaryColor,
                          pageController: pageController,
                          pages: productData.images.validate(),
                        ),
                      ).visible(productData.images.validate().length > 1),
                    ],
                  ),
                ),
                collapseMode: CollapseMode.parallax,
              ),
              backgroundColor: context.scaffoldBackgroundColor,
              title: Text(productData.name.validate().capitalizeFirstLetter(), style: boldTextStyle(size: 22)).visible(innerBoxIsScrolled),
              actions: [
                Stack(
                  children: [
                    ic_cart.iconImageColored(size: 22, color: shimmerPrimaryBaseColor).paddingSymmetric(horizontal: 16).appOnTap(() {
                      CartScreen().launch(context, pageRouteAnimation: pageAnimation, duration: pageAnimationDuration);
                    }).paddingTop(shopStore.itemsInCartCount.validate() > 0 ? 8 : 0),
                    Positioned(
                      top: -4,
                      right: 8,
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: boxDecorationDefault(
                          color: appSecondaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: Text(shopStore.itemsInCartCount.validate().toString(), style: secondaryTextStyle(color: Colors.white, size: 12)),
                      ),
                    ).visible(shopStore.itemsInCartCount.validate() > 0)
                  ],
                ).visible(innerBoxIsScrolled),
              ],
            ),
          ];
        }),
        body: Stack(
          children: [
            SnapHelperWidget(
              future: future,
              loadingWidget: ProductDetailShimmerScreen(),
              errorBuilder: (p0) {
                return NoDataFoundWidget(
                  text: p0.toString(),
                  iconSize: 160,
                  retryText: locale.clickToRefresh,
                  onRetry: () {
                    init(showLoader: true);
                  },
                ).paddingSymmetric(horizontal: 16);
              },
              onSuccess: (data) {
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                        margin: EdgeInsets.only(left: 12, top: 12),
                        decoration: BoxDecoration(color: context.cardColor, borderRadius: radius(defaultRadius + 4)),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          decoration: BoxDecoration(color: primaryColor, borderRadius: radius()),
                          child: Text(locale.lblSale, style: secondaryTextStyle(size: 10, color: Colors.white)),
                        ),
                      ).visible(productData.onSale.validate()),
                      Text(productData.name.validate().capitalizeFirstLetter(), style: boldTextStyle(size: 20)).paddingSymmetric(horizontal: 16, vertical: 8),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          PriceWidget(
                            price: productData.price.validate(),
                            priceHtml: productData.priceHtml,
                            salePrice: productData.salePrice,
                            regularPrice: productData.regularPrice,
                            prefix: appStore.wcCurrency.validate(),
                            showDiscountPercentage: true,
                            size: 16,
                          ),
                          8.width,
                          if (productData.discount.validate().isNotEmpty)
                            Text(
                              '(${productData.discount} OFF)',
                              style: boldTextStyle(color: Colors.red, size: 14),
                            ),
                        ],
                      ).paddingSymmetric(horizontal: 16),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          DisabledRatingBarWidget(
                            rating: productData.averageRating.validate().toDouble(),
                            size: 18,
                          ),
                          16.width,
                          Text('(${productData.ratingCount} ${locale.lblReview})', style: secondaryTextStyle(color: context.primaryColor)),
                        ],
                      ).paddingOnly(left: 16, right: 16, top: 8).visible(productData.averageRating.validate().toDouble() != 0.0),
                      16.height,
                      if (productData.type.validate() != ProductTypes.grouped && productData.type.validate() != ProductTypes.variable)
                        Row(
                          children: [
                            Text(locale.lblQuantity, style: primaryTextStyle()),
                            Icon(
                              Icons.remove,
                              size: 18,
                            ).paddingOnly(left: 8, right: 6, top: 8, bottom: 8).onTap(() {
                              if (count > 0) {
                                count = count - 1;
                                setState(() {});
                              }
                            }, splashColor: Colors.transparent, highlightColor: Colors.transparent),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                              margin: EdgeInsets.only(top: 8, bottom: 8),
                              decoration: BoxDecoration(
                                borderRadius: radius(4),
                                border: Border.all(),
                                color: context.cardColor,
                              ),
                              child: Text(count.toString(), style: primaryTextStyle(size: 12)),
                            ),
                            Icon(
                              Icons.add,
                              size: 18,
                            ).paddingOnly(left: 6, right: 12, top: 8, bottom: 8).onTap(() {
                              count = count + 1;
                              setState(() {});
                            }, splashColor: Colors.transparent, highlightColor: Colors.transparent),
                          ],
                        ).paddingSymmetric(horizontal: 16),
                      if (productData.sku.validate().isNotEmpty)
                        RichText(
                          text: TextSpan(
                            text: locale.sku.suffixText(value: ' - '),
                            style: boldTextStyle(size: 14),
                            children: <TextSpan>[
                              TextSpan(
                                text: productData.sku.validate(),
                                style: primaryTextStyle(),
                              ),
                            ],
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ).paddingOnly(top: 16, left: 16, right: 16),
                      if (productData.categories.validate().isNotEmpty)
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(locale.lblCategory.suffixText(value: ' : '), style: boldTextStyle(size: 14)),
                            Wrap(
                              children: productData.categories!.map(
                                (e) {
                                  return Text(e.name.validate(), style: primaryTextStyle(color: context.primaryColor, size: 14)).onTap(() {
                                    ProductListScreen(categoryName: e.name, categoryId: e.id).launch(context);
                                  });
                                },
                              ).toList(),
                            ).expand(),
                          ],
                        ).paddingSymmetric(horizontal: 16),
                      if ((groupProductList.validate().isNotEmpty && productData.type == ProductTypes.grouped) || (groupProductList.validate().isNotEmpty && productData.type == ProductTypes.variable)) 16.height,
                      if ((groupProductList.validate().isNotEmpty && productData.type == ProductTypes.grouped) || (groupProductList.validate().isNotEmpty && productData.type == ProductTypes.variable))
                        Text(locale.lblChooseFromCollection, style: primaryTextStyle()).paddingSymmetric(horizontal: 16),
                      if ((groupProductList.validate().isNotEmpty && productData.type == ProductTypes.grouped) || (groupProductList.validate().isNotEmpty && productData.type == ProductTypes.variable))
                        Divider(
                          indent: 16,
                          endIndent: 16,
                          height: 16,
                          color: context.dividerColor,
                        ),
                      if ((groupProductList.validate().isNotEmpty && productData.type == ProductTypes.grouped) || (groupProductList.validate().isNotEmpty && productData.type == ProductTypes.variable))
                        Column(
                          children: groupProductList.map((e) {
                            return DecoratedBox(
                              decoration: boxDecorationDefault(
                                color: context.cardColor,
                                border: Border.all(
                                  color: selectedIndex == groupProductList.indexOf(e) ? appSecondaryColor : context.cardColor,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CachedImageWidget(
                                    url: e.product!.productImage.validate(),
                                    height: 50,
                                    width: 50,
                                    fit: BoxFit.cover,
                                  ).cornerRadiusWithClipRRect(defaultRadius),
                                  16.width,
                                  Text(e.product!.name.validate(), style: primaryTextStyle(size: 14), overflow: TextOverflow.ellipsis, maxLines: 1).expand(),
                                  16.width,
                                  PriceWidget(
                                    price: e.product!.price.validate(),
                                    priceHtml: e.product!.priceHtml,
                                    salePrice: e.product!.salePrice,
                                    regularPrice: e.product!.regularPrice,
                                    showDiscountPercentage: false,
                                    prefix: appStore.wcCurrency.validate(),
                                    textSize: 12,
                                  ),
                                  16.width,
                                  Icon(
                                    Icons.info_outline,
                                    color: primaryColor,
                                    size: 18,
                                  ).appOnTap(() {
                                    ProductDetailScreen(productId: e.id).launch(context);
                                  })
                                ],
                              ).paddingSymmetric(horizontal: 12, vertical: 12).onTap(() {
                                selectedIndex = groupProductList.indexOf(e);

                                setState(() {});
                                ProductDetailScreen(productId: e.id).launch(context);
                              }, splashColor: Colors.transparent, highlightColor: Colors.transparent),
                            ).paddingSymmetric(horizontal: 16, vertical: 8);
                          }).toList(),
                        ),
                      if (!getBoolAsync(AppKeys.hasInReviewKey) && productData.description.validate().isNotEmpty) 16.height,
                      if (!getBoolAsync(AppKeys.hasInReviewKey) && productData.description.validate().isNotEmpty) Text(locale.lblDescription, style: boldTextStyle()).paddingSymmetric(horizontal: 16),
                      if (!getBoolAsync(AppKeys.hasInReviewKey) && productData.description.validate().isNotEmpty) 8.height,
                      if (!getBoolAsync(AppKeys.hasInReviewKey) && productData.description.validate().isNotEmpty)
                        ReadMoreText(parseHtmlString(productData.description.validate()),
                            trimLines: 4,
                            textAlign: TextAlign.justify,
                            trimMode: TrimMode.Line,
                            style: secondaryTextStyle(),
                            moreStyle: TextStyle(
                              fontSize: 14,
                              color: appStore.isDarkModeOn ? appPrimaryColor : redColor,
                              fontWeight: FontWeight.bold,
                            ),
                            lessStyle: TextStyle(
                              fontSize: 14,
                              color: appStore.isDarkModeOn ? appPrimaryColor : redColor,
                              fontWeight: FontWeight.bold,
                            )).paddingSymmetric(horizontal: 16),
                      if (!getBoolAsync(AppKeys.hasInReviewKey) && productData.description.validate().isNotEmpty) 24.height,
                      if (productData.attributes.validate().isNotEmpty)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(locale.additionalInformation, style: boldTextStyle()).paddingSymmetric(horizontal: 16),
                            Table(
                              columnWidths: {
                                0: FractionColumnWidth(0.25),
                                1: FractionColumnWidth(0.7),
                              },
                              border: TableBorder.all(
                                style: BorderStyle.solid,
                                width: 0.5,
                                color: secondaryTxtColor,
                                borderRadius: radius(4),
                              ),
                              children: productData.attributes.validate().map((e) {
                                return TableRow(
                                  decoration: boxDecorationDefault(color: context.cardColor),
                                  children: [
                                    Text(
                                      e.name.validate(),
                                      style: primaryTextStyle(),
                                      textAlign: TextAlign.start,
                                    ).paddingSymmetric(vertical: 8, horizontal: 16),
                                    if ((productData.type == ProductTypes.variable || productData.type == ProductTypes.variation) && e.optionString.validate().isNotEmpty)
                                      Text(
                                        e.optionString.validate(),
                                        style: primaryTextStyle(),
                                        textAlign: TextAlign.start,
                                      ).paddingSymmetric(horizontal: 16)
                                    else
                                      Wrap(
                                        children: (e.options ?? []).map((option) {
                                          if (option.isNotEmpty && option != 'Choose an option') {
                                            return Text(
                                              option.validate(),
                                              style: primaryTextStyle(),
                                              textAlign: TextAlign.start,
                                            ).paddingSymmetric(horizontal: 16, vertical: 8);
                                          } else {
                                            return Offstage();
                                          }
                                        }).toList(),
                                      ),
                                  ],
                                );
                              }).toList(),
                            ).paddingAll(16),
                            8.height,
                          ],
                        ),
                      ProductReviewComponent(
                        productId: productData.id.validate(),
                      ),
                      if (productData.relatedProductList.validate().isNotEmpty)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            16.height,
                            Text(locale.relatedProducts, style: boldTextStyle(size: 18)).paddingSymmetric(horizontal: 18),
                            HorizontalList(
                              padding: EdgeInsets.all(16),
                              spacing: 16,
                              itemCount: productData.relatedProductList.validate().length,
                              itemBuilder: (ctx, index) {
                                return RelatedProductCardComponent(product: productData.relatedProductList.validate()[index]);
                              },
                            ),
                          ],
                        )
                    ],
                  ),
                );
              },
            ),
            Observer(builder: (_) => LoaderWidget().center().visible(appStore.isLoading)),
          ],
        ),
      ),
      bottomNavigationBar: productData.type != ProductTypes.variable
          ? Container(
              color: context.cardColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isWishListed
                      ? ic_wish_listed.iconImageColored(size: 24, color: Colors.red).appOnTap(removeFromFav).paddingLeft(16).paddingRight(16)
                      : ic_favList.iconImageColored(size: 24, color: context.iconColor).appOnTap(addToFavorite).paddingLeft(16).paddingRight(16),
                  AppButton(
                    shapeBorder: RoundedRectangleBorder(borderRadius: radius(0)),
                    child: TextIcon(
                      text: productData.type == ProductTypes.external
                          ? locale.lblBuyThisOnWordpressStore
                          : productData.isAddedCart.validate()
                              ? locale.goToCart
                              : productData.stockStatus == 'instock'
                                  ? locale.addToCart
                                  : locale.outOfStock,
                      textStyle: boldTextStyle(color: Colors.white),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 8),
                    onTap: () async {
                      addToCart();
                    },
                    elevation: 0,
                    color: productData.isAddedCart.validate()
                        ? appSecondaryColor
                        : productData.stockStatus == 'instock'
                            ? context.primaryColor
                            : Colors.grey.withValues(alpha: 0.5),
                  ).expand().visible(isFetched && productData.type != ProductTypes.grouped),
                ],
              ).visible(isFetched && productData.type != ProductTypes.grouped),
            )
          : Offstage(),
    );
  }
}
