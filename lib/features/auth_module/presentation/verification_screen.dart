import 'package:charity_app/core/app_export.dart';
import 'package:charity_app/core/widgets/custom_elevated_button.dart';
import 'package:charity_app/core/widgets/custom_outlined_button.dart';
import 'package:charity_app/core/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 64,
          title: Text(
            'Verification',
            style: CustomTextStyles.titleLarge20,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(-0.4, 1.39),
              colors: [
                appTheme.whiteA700,
                theme.colorScheme.onPrimaryContainer.withOpacity(0)
              ],
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 13.v),
            child: _buildVerificationSection(context),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVerificationSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5.v),
      padding: EdgeInsets.symmetric(horizontal: 34.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 19.h),
            child: Text(
              "Verify OTP",
              style: CustomTextStyles.titleLarge20,
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 22.h),
            child: Text(
              "We have sent the Verification code! ",
              style: theme.textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 64.v),
          Padding(
            padding: EdgeInsets.only(
              left: 29.h,
              right: 36.h,
            ),
            child: CustomPinCodeTextField(
              context: context,
              onChanged: (value) {},
            ),
          ),
          SizedBox(height: 26.v),
          Align(
            alignment: Alignment.center,
            child: Text(
              "We sent code to",
              style: theme.textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 20.v),
          CustomOutlinedButton(
            text: "primajatnika271995@gmail.com",
            margin: EdgeInsets.only(left: 4.h),
          ),
          SizedBox(height: 23.v),
          CustomElevatedButton(
            text: "Verify OTP",
            margin: EdgeInsets.only(left: 1.h),
            buttonTextStyle: CustomTextStyles.titleMediumJost17,
          )
        ],
      ),
    );
  }
}
