import 'package:charity_app/core/app_export.dart';
import 'package:charity_app/core/utils/constant.dart';
import 'package:flutter/material.dart';

class InvestorCardWidget extends StatelessWidget {
  const InvestorCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder3,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 3.v,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 6.v,
                          bottom: 6.v,
                        ),
                        child: Container(
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
                      ),
                      Expanded(
                        flex: 5,
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
                                maxLines: 2,
                                style: CustomTextStyles.titleMediumJostSemiBold,
                              ),
                              Text(
                                "Investor & Founder of Cat Fund",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .bodySmallRobotoBlueGray40001,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgRating,
                                height: 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
                      children: [
                        Text(
                          '2.000K',
                          style: CustomTextStyles.titleMediumJostSemiBold,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: appTheme.gray300,
                            ),
                            borderRadius: BorderRadius.circular(6.h),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(3.h),
                            child: Text(
                              'Invested Amt',
                              style: CustomTextStyles.bodySmallRobotoGray600,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 17.v,
          ),
          Divider(
            color: appTheme.gray300,
            thickness: 1,
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgChat,
                  height: 30,
                  width: 30,
                ),
                SizedBox(
                  width: 10.h,
                ),
                Text(
                  'Send an Message',
                  style: CustomTextStyles.bodySmallRobotoGray600,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
