import 'package:charity_app/core/app_export.dart';
import 'package:charity_app/core/utils/constant.dart';
import 'package:charity_app/core/widgets/custom_elevated_button.dart';
import 'package:charity_app/core/widgets/custom_outlined_button.dart';
import 'package:charity_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordConfirmController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 64,
          title: Text(
            'Create an Account',
            style: CustomTextStyles.titleLargeBold,
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
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              padding: EdgeInsets.only(top: 20.v),
              child: Container(
                margin: EdgeInsets.only(bottom: 5.v),
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                  children: [
                    _buildEmailRow(context),
                    SizedBox(height: 16.v),
                    _buildPasswordRow(context),
                    SizedBox(height: 16.v),
                    _buildPasswordConfirmRow(context),
                    SizedBox(height: 28.v),
                    _buildSignUp(context),
                    SizedBox(height: 26.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Already have an Account ?",
                            style: CustomTextStyles
                                .labelLargeJosefinSansErrorContainerBold,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "Sign in",
                            style: CustomTextStyles
                                .labelLargeJosefinSansOnPrimaryBold,
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 20.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 33.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 8.v,
                              bottom: 4.v,
                            ),
                            child: SizedBox(
                              width: 80.h,
                              child: Divider(
                                color: appTheme.blueGray30002,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "or Sign Up with",
                              style: CustomTextStyles
                                  .labelLargeJosefinSansGray50004Bold,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 6.v,
                              bottom: 4.v,
                            ),
                            child: SizedBox(
                              width: 80.h,
                              child: Divider(
                                color: appTheme.blueGray30002,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 23.v),
                    _buildSignUpWithGoogle(context),
                    SizedBox(height: 15.v),
                    _buildSignUpWithFacebook(context)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 14.h),
        child: CustomTextFormField(
          controller: emailController,
          hintText: "Email",
          hintStyle: CustomTextStyles.titleSmallRobotoBlueGray700_1,
          textInputType: TextInputType.emailAddress,
          borderDecoration: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.h),
            borderSide: BorderSide(
              color: appTheme.gray30001,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEmail,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 16.v),
        ),
        _buildEmail(context)
      ],
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 14.h),
        child: CustomTextFormField(
          controller: passwordController,
          hintText: "Password",
          hintStyle: CustomTextStyles.titleSmallRobotoBlueGray700_1,
          textInputType: TextInputType.visiblePassword,
          obscureText: true,
          borderDecoration: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.h),
            borderSide: BorderSide(
              color: appTheme.gray30001,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgPassword,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 16.v),
        ),
        _buildPassword(context)
      ],
    );
  }

  /// Section Widget
  Widget _buildPasswordConfirm(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 14.h),
        child: CustomTextFormField(
          controller: passwordConfirmController,
          hintText: "Password",
          hintStyle: CustomTextStyles.titleSmallRobotoBlueGray700_1,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          obscureText: true,
          borderDecoration: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.h),
            borderSide: BorderSide(
              color: appTheme.gray30001,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordConfirmRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgPassword,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 16.v),
        ),
        _buildPasswordConfirm(context)
      ],
    );
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
      text: "Sign Up",
      margin: EdgeInsets.only(left: 40.h),
      buttonTextStyle: CustomTextStyles.bodyLargeJostBlueGray700,
      alignment: Alignment.centerRight,
      onPressed: () {
        GoRouter.of(context).push('/verification');
      },
    );
  }

  /// Section Widget
  Widget _buildSignUpWithGoogle(BuildContext context) {
    return CustomOutlinedButton(
      text: "Sign Up with Google",
      margin: EdgeInsets.only(
        left: 24.h,
        right: 26.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUpWithFacebook(BuildContext context) {
    return CustomOutlinedButton(
      text: "Sign Up with Facebook",
      margin: EdgeInsets.only(
        left: 24.h,
        right: 26.h,
      ),
    );
  }
}
