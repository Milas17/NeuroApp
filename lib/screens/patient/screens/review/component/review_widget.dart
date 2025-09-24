import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:kivicare_flutter/components/disabled_rating_bar_widget.dart';
import 'package:kivicare_flutter/components/image_border_component.dart';
import 'package:kivicare_flutter/main.dart';
import 'package:kivicare_flutter/model/rating_model.dart';
import 'package:kivicare_flutter/utils/colors.dart';
import 'package:nb_utils/nb_utils.dart';

class ReviewWidget extends StatelessWidget {
  final RatingData data;
  final bool addMargin;

  final Decoration? decoration;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  final VoidCallback? callDelete;

  ReviewWidget({required this.data, this.addMargin = true, this.callDelete, this.decoration, this.margin, this.padding});
  bool get showDelete {
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: ValueKey(data.id),
      enabled: true,
      endActionPane: ActionPane(
        motion: const DrawerMotion(),
        dismissible: DismissiblePane(onDismissed: () {
          callDelete?.call();
        }),
        children: [
          SlidableAction(
            onPressed: (BuildContext context) async {
              showConfirmDialogCustom(
                context,
                title: locale.lblDoYouWantToDeleteReview,
                positiveText: locale.lblYes,
                negativeText: locale.lblCancel,
                dialogType: DialogType.DELETE,
                onAccept: (c) async {
                  callDelete?.call();
                },
              );
            },
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: locale.lblDelete,
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(defaultRadius),topRight: Radius.circular(defaultRadius)),
          ),
        ],
      ),

      child: Container(
        padding: padding ?? EdgeInsets.all(16),
        width: context.width(),
        decoration: decoration ?? boxDecorationDefault(color: context.cardColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageBorder(
                  src: data.patientProfileImage.validate(),
                  height: 40,
                  nameInitial: data.patientName.validate(value: 'P')[0],
                ),
                16.width,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(data.patientName.validate(), style: boldTextStyle(size: 14), maxLines: 1, overflow: TextOverflow.ellipsis).flexible(),
                        DisabledRatingBarWidget(rating: data.rating.validate().toDouble(), size: 14, showRatingText: true, itemCount: 1),
                      ],
                    ),
                    if (data.createdAt.validate().isNotEmpty) Text(data.createdAt.validate(), style: secondaryTextStyle(size: 12)),
                    if (data.reviewDescription.validate().isNotEmpty)
                      ReadMoreText(
                        data.reviewDescription.validate(),
                        style: secondaryTextStyle(),
                        trimLength: 120,
                        colorClickableText: appSecondaryColor,
                      ).paddingTop(4),
                  ],
                ).flexible(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}