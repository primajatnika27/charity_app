import 'package:charity_app/core/app_export.dart';
import 'package:charity_app/core/utils/constant.dart';
import 'package:charity_app/features/campaigns_module/presentation/widget/detail_campaign_widget.dart';
import 'package:charity_app/features/campaigns_module/presentation/widget/investor_card_widget.dart';
import 'package:flutter/material.dart';

class CampaignScreen extends StatefulWidget {
  const CampaignScreen({super.key});

  @override
  State<CampaignScreen> createState() => _CampaignScreenState();
}

class _CampaignScreenState extends State<CampaignScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 64,
        title: Text(
          'My Campaigns',
          style: CustomTextStyles.titleLarge20,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Stack(
        children: [
          _buildRecentStatus(context),
          Container(
            child: DraggableScrollableSheet(
              minChildSize: 0.75,
              initialChildSize: 0.75,
              maxChildSize: 0.94,
              builder: (context, scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.5, 0),
                      end: Alignment(-0.4, 1.39),
                      colors: [
                        appTheme.whiteA700,
                        theme.colorScheme.onPrimaryContainer.withOpacity(0)
                      ],
                    ),
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Stack(
                    children: [
                      SingleChildScrollView(
                        controller: scrollController,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 36.h,
                            vertical: 23.v,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DetailCampaignWidget(),
                              SizedBox(height: 22.v),
                              Text(
                                "Your Campaigns Backed by following investor.",
                                style: CustomTextStyles.titleLarge20,
                              ),
                              Text(
                                "you can message & Invite for meeting!",
                                style: CustomTextStyles.bodySmallRobotoGray600,
                              ),
                              SizedBox(height: 22.v),
                              InvestorCardWidget(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecentStatus(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: SizeUtils.width,
        padding: EdgeInsets.symmetric(
          horizontal: 26.h,
          vertical: 12.v,
        ),
        decoration: AppDecoration.gradientIndigoToBlack,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 13.v),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.v),
              decoration: AppDecoration.gradientBlueAToBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Text(
                      "Fundraising for Tech Startup",
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMediumRobotoBlueGray10003
                          .copyWith(
                        height: 1.36,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Total Investor",
                                style: CustomTextStyles
                                    .titleMediumRobotoGreen300_1
                                    ?.copyWith(
                                  color: appTheme.green100,
                                ),
                              ),
                              TextSpan(
                                text: " ",
                              ),
                              TextSpan(
                                text: " 1",
                                style: CustomTextStyles.titleMediumJostSemiBold
                                    ?.copyWith(
                                  color: appTheme.whiteA700,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgRaisedAmount,
                                ),
                                SizedBox(width: 5.v),
                                Text(
                                  "Raised Amount",
                                  style: CustomTextStyles
                                      .titleMediumRobotoGreen300_1
                                      ?.copyWith(
                                    color: appTheme.green100,
                                    fontSize: 13.fSize,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Rp 500.000,-",
                              style: CustomTextStyles
                                  .titleMediumRobotoGreen300_1
                                  ?.copyWith(
                                color: appTheme.whiteA700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 65.v)
          ],
        ),
      ),
    );
  }
}
