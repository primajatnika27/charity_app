import 'package:charity_app/core/app_export.dart';
import 'package:charity_app/core/theme/custom_button_style.dart';
import 'package:charity_app/core/utils/constant.dart';
import 'package:charity_app/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class DashboardCampaignCardWidget extends StatelessWidget {
  const DashboardCampaignCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle67133x251,
            height: 100.v,
            width: 288.h,
            radius: BorderRadius.vertical(
              top: Radius.circular(8),
            ),
          ),
          SizedBox(
            height: 5.v,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              right: 16.h,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Text(
                    'Raising Capital for a New Restaurant',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleMedium!.copyWith(
                      height: 1.25,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert),
                    iconSize: 14.fSize,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              right: 16.h,
            ),
            child: Text(
              'Research Lab & Gadgets to analyse future Diseases',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallRobotoGray600,
            ),
          ),
          SizedBox(
            height: 15.v,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              right: 16.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Raised of",
                              style:
                                  CustomTextStyles.titleMediumRobotoGreen300_1,
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
                      SizedBox(
                        height: 5.v,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder3,
                              color: appTheme.green100,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3.h),
                              child: Text(
                                'Raise Goal ',
                                style: CustomTextStyles.labelLightGreen600,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.v,
                          ),
                          Expanded(
                            child: Text(
                              'Rp 1M',
                              style: CustomTextStyles
                                  .labelLargeJosefinSansGray50004Bold,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.v,
                ),
                CustomElevatedButton(
                  onPressed: () {},
                  width: 100.h,
                  height: 35.v,
                  text: 'Donate Now',
                  buttonStyle: CustomButtonStyles.fillBlue,
                  buttonTextStyle:
                      CustomTextStyles.labelMediumOnPrimaryContainer,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.v,
          ),
        ],
      ),
    );
  }
}
