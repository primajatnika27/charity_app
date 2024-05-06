import 'package:charity_app/core/app_export.dart';
import 'package:charity_app/core/utils/constant.dart';
import 'package:charity_app/core/widgets/custom_dropdown.dart';
import 'package:charity_app/core/widgets/custom_text_form_field.dart';
import 'package:charity_app/features/home_module/presentation/widget/campaign_card_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 64,
        title: Text(
          'Home-screen',
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
                  decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
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
                              CustomTextFormField(
                                hintText: "Search Campaigns",
                                textInputAction: TextInputAction.done,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.h,
                                  vertical: 15.v,
                                ),
                                borderDecoration: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.h),
                                  borderSide: BorderSide(
                                    color: appTheme.gray30001,
                                    width: 1,
                                  ),
                                ),
                              ),
                              SizedBox(height: 15.v),
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
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
                    padding: EdgeInsets.only(
                      left: 12.h,
                      right: 12.h,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: SizedBox(
                            child: Text(
                              "Total Funding",
                              maxLines: 7,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .titleMediumRobotoBlueGray10003
                                  .copyWith(
                                height: 1.36,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 10.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Rp 500.000,-",
                                  style:
                                      theme.textTheme.headlineMedium!.copyWith(
                                    color: theme.colorScheme.onPrimaryContainer,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.fSize,
                                  ),
                                ),
                                SizedBox(
                                  child: Divider(
                                    color: theme.colorScheme.onPrimaryContainer,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Divider(
                    color: appTheme.blueGray200,
                  ),
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(left: 70.h),
                    child: Container(
                      height: 30.v,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Withdrawal Amount",
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
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
        return CampaignCardWidget();
      },
    );
  }
}
