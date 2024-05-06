import 'package:charity_app/core/app_export.dart';
import 'package:charity_app/core/theme/custom_button_style.dart';
import 'package:charity_app/core/utils/constant.dart';
import 'package:charity_app/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class DetailCampaignWidget extends StatelessWidget {
  const DetailCampaignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle67133x251,
            fit: BoxFit.fill,
            height: 200.v,
            width: 288.h,
            radius: BorderRadius.vertical(
              top: Radius.circular(16),
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
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. ',
              style: CustomTextStyles.bodySmallRobotoGray600,
            ),
          ),
          SizedBox(
            height: 15.v,
          ),
          Divider(
            height: 1,
            thickness: 1,
            color: appTheme.gray300
          ),
          SizedBox(
            height: 10.v,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              right: 16.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'No Of Subscriber',
                      style:
                          CustomTextStyles.labelLargeJosefinSansGray50004Bold,
                    ),
                    Text(
                      '1',
                      style: CustomTextStyles.titleMediumJostSemiBold,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.v,
          ),
          CustomElevatedButton(
            text: 'Withdraw Fund',
            onPressed: () {},
            margin: EdgeInsets.symmetric(horizontal: 10.h),
          ),
          SizedBox(
            height: 15.v,
          ),
        ],
      ),
    );
  }
}
