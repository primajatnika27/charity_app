import 'package:charity_app/core/app_export.dart';
import 'package:charity_app/core/utils/constant.dart';
import 'package:charity_app/core/widgets/custom_dropdown.dart';
import 'package:charity_app/core/widgets/custom_elevated_button.dart';
import 'package:charity_app/features/dashboard_module/presentation/widget/dashboard_campaign_card_widget.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 64,
        title: Text(
          'Dashboard',
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
              minChildSize: 0.67,
              initialChildSize: 0.67,
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
                              Text(
                                "Popular Campaigns",
                                style: CustomTextStyles.titleLarge20,
                              ),
                              SizedBox(height: 22.v),
                              CustomDropDown(
                                icon: Container(
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 24.h),
                                  child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgArrowDownBlueGray,
                                    height: 6.v,
                                    width: 11.h,
                                  ),
                                ),
                                hintText: "All Categories",
                                items: dropdownItemList,
                              ),
                              SizedBox(height: 25.v),
                              _buildListCampaigns(context),
                              SizedBox(height: 25.v),
                              CustomElevatedButton(
                                text: "See More Campaigns",
                                margin: EdgeInsets.symmetric(horizontal: 36.h),
                              ),
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
        padding: EdgeInsets.symmetric(
          horizontal: 26.h,
          vertical: 12.v,
        ),
        decoration: AppDecoration.gradientIndigoToBlack,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Recent Status",
              style: CustomTextStyles.titleSmallRobotoOnPrimaryContainer,
            ),
            SizedBox(height: 13.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 5.h),
                    child: _buildRecentStatusRow(
                      context,
                      title: "01",
                      desc: "Active Campaigns",
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 5.h),
                    child: _buildRecentStatusRow(
                      context,
                      title: "10",
                      desc: "Active Investors",
                      primary: true,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 5.h),
                    child: _buildRecentStatusRow(
                      context,
                      title: "Rp 500K",
                      desc: "Total Funding",
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 65.v)
          ],
        ),
      ),
    );
  }

  Widget _buildRecentStatusRow(
    BuildContext context, {
    required String title,
    required String desc,
    bool primary = false,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 9.v),
      decoration: BoxDecoration(
        color: primary ? appTheme.green300 : null,
        borderRadius: BorderRadiusStyle.roundedBorder8,
        border: primary
            ? null
            : Border.all(color: theme.colorScheme.onPrimaryContainer),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 10.v,
          ),
          Center(
            child: Text(
              title,
              style: CustomTextStyles.headlineMediumBlueGray50006?.copyWith(
                height: 1.36,
                color: theme.colorScheme.onPrimaryContainer,
                fontSize: 20.fSize,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            child: Divider(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
          SizedBox(
            height: 15.v,
          ),
          Container(
            width: 77.h,
            margin: EdgeInsets.only(left: 1.h),
            child: Text(
              desc,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleSmallRobotoBlueGray50006.copyWith(
                height: 1.30,
              ),
            ),
          ),
          SizedBox(
            height: 4.v,
          )
        ],
      ),
    );
  }

  Widget _buildListCampaigns(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 16.v,
        );
      },
      itemCount: 2,
      itemBuilder: (context, index) {
        return DashboardCampaignCardWidget();
      },
    );
  }
}
