import 'package:charity_app/core/app_export.dart';
import 'package:charity_app/core/utils/constant.dart';
import 'package:charity_app/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class CampaignCardWidget extends StatelessWidget {
  const CampaignCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 44.h,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 47.adaptSize,
                  width: 47.adaptSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      23.h,
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgAvatar,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 7.h,
                      top: 2.v,
                      bottom: 6.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Prima Jatnika",
                          style: CustomTextStyles.titleLargeRobotoBlack900,
                        ),
                        Text(
                          "Ucan's owner",
                          style: CustomTextStyles.bodySmallRobotoBlueGray40001,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 56.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Raised of",
                    style: CustomTextStyles.titleMediumRobotoGreen300_1,
                  ),
                  TextSpan(
                    text: " ",
                  ),
                  TextSpan(
                    text: " 85%",
                    style: CustomTextStyles.titleMediumRobotoBlack900,
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "September 23, 2021",
              style: CustomTextStyles.bodySmallRobotoGray600,
            ),
          ),
          SizedBox(height: 12.v),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle67,
            height: 133.v,
            width: 251.h,
          ),
          SizedBox(height: 11.v),
          Container(
            width: 202.h,
            margin: EdgeInsets.only(
              right: 39.h,
            ),
            child: Text(
              "Minim dolor in amet nulla laboris enim dolore consequat proident fugiat culpa eiusmod...",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallRobotoBlueGray700.copyWith(
                height: 1.43,
              ),
            ),
          ),
          SizedBox(height: 20.v),
          CustomElevatedButton(
            text: "View Details",
            margin: EdgeInsets.symmetric(horizontal: 25.h),
            alignment: Alignment.center,
          ),
          SizedBox(height: 20.v),
        ],
      ),
    );
  }
}
