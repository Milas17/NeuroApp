import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kivicare_flutter/main.dart';
import 'package:kivicare_flutter/utils/colors.dart';
import 'package:nb_utils/nb_utils.dart';

class PriceWidget extends StatelessWidget {
  final String price;
  final TextStyle? textStyle;
  final int? textSize;
  final Color? textColor;
  final String? postFix;
  final String? prefix;
  final TextAlign? textAlign;
  final String? salePrice;
  final String? regularPrice;
  final String? priceHtml;

  final bool showDiscountPercentage;
  final int? size;
  final int? offSize;

  PriceWidget({
    required this.price,
    this.textStyle,
    this.textAlign,
    this.textSize,
    this.postFix,
    this.prefix,
    this.textColor,
    this.salePrice,
    this.regularPrice,
    this.priceHtml,
    this.showDiscountPercentage = false,
    this.size,
    this.offSize,
  });

  @override
  Widget build(BuildContext context) {
    if (salePrice.validate().isNotEmpty)
      return Wrap(
        spacing: 16,
        children: [
          if (regularPrice.validate().toDouble() > salePrice.toDouble())
            Text(
              '${NumberFormat.decimalPattern('fr').format(regularPrice.validate().toDouble().toInt())}${postFix ?? appStore.currencyPostfix.validate(value: ' FCFA')}',
              textAlign: textAlign,
              style: textStyle ??
                  secondaryTextStyle(
                    size: textSize ?? textBoldSizeGlobal.toInt(),
                    color: textColor ?? textPrimaryColorGlobal,
                    textDecorationStyle: TextDecorationStyle.solid,
                    decorationColor: ratingBarRedColor,
                    weight: FontWeight.w800,
                    decoration: TextDecoration.lineThrough,
                  ),
            ),
          Text(
            '${NumberFormat.decimalPattern('fr').format(salePrice.validate().toDouble().toInt())}${postFix ?? appStore.currencyPostfix.validate(value: ' FCFA')}',
            textAlign: textAlign,
            style: textStyle ?? boldTextStyle(size: textSize ?? textBoldSizeGlobal.toInt(), color: textColor ?? ratingBarLightGreenColor),
          ),
        ],
      );

    return Text(
      '${NumberFormat.decimalPattern('fr').format(price.validate().toDouble().toInt())}${postFix ?? appStore.currencyPostfix.validate(value: ' FCFA')}',
      textAlign: textAlign,
      style: textStyle ?? boldTextStyle(size: textSize ?? textBoldSizeGlobal.toInt(), color: textColor ?? textPrimaryColorGlobal),
    );
  }
}