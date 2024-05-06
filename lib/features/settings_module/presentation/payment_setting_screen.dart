import 'package:charity_app/core/app_export.dart';
import 'package:charity_app/core/widgets/custom_elevated_button.dart';
import 'package:charity_app/core/widgets/custom_text_form_field.dart';
import 'package:charity_app/features/settings_module/presentation/widget/payment_card_widget.dart';
import 'package:flutter/material.dart';

class PaymentSettingScreen extends StatefulWidget {
  const PaymentSettingScreen({super.key});

  @override
  State<PaymentSettingScreen> createState() => _PaymentSettingScreenState();
}

class _PaymentSettingScreenState extends State<PaymentSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 64,
        title: Text(
          'Payment Settings',
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
                                "Select Card to load Payments",
                                style: CustomTextStyles.titleLarge20,
                              ),
                              Text(
                                "you can add the amount to only business cards!",
                                style:
                                    CustomTextStyles.bodySmallRobotoBlueGray700,
                              ),
                              SizedBox(height: 22.v),
                              _buildListCampaigns(context),
                              SizedBox(height: 22.v),
                              Text(
                                "Enter Release Amount",
                                style: CustomTextStyles
                                    .labelLargeJosefinSansGray50004,
                              ),
                              SizedBox(height: 10.v),
                              CustomTextFormField(
                                hintText: "Enter Amount",
                                textInputAction: TextInputAction.done,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.h,
                                  vertical: 10.v,
                                ),
                                borderDecoration: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.h),
                                  borderSide: BorderSide(
                                    color: appTheme.gray30001,
                                    width: 1,
                                  ),
                                ),
                              ),
                              SizedBox(height: 30.v),
                              CustomElevatedButton(
                                text: "Transfer Amount",
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
              "Balance Amount",
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
                              "Total Owned",
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
          height: 10.v,
        );
      },
      itemCount: 3,
      itemBuilder: (context, index) {
        return PaymentCardWidget();
      },
    );
  }
}
