import 'package:charity_app/app/router/app_router.dart';
import 'package:charity_app/core/app_export.dart';
import 'package:charity_app/core/utils/constant.dart';
import 'package:charity_app/core/widgets/custom_elevated_button.dart';
import 'package:charity_app/core/widgets/custom_outlined_button.dart';
import 'package:charity_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 64,
          title: Text(
            'Sign in',
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
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              padding: EdgeInsets.only(top: 10.v),
              child: Container(
                margin: EdgeInsets.only(bottom: 5.v),
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 37.h),
                        child: Text(
                          "Welcome Back!",
                          style: CustomTextStyles.titleLargeBold,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 40.h),
                        child: Text(
                          "Please fill in correct Details .",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                    SizedBox(height: 31.v),
                    _buildRowEmail(context),
                    SizedBox(height: 16.v),
                    _buildRowPassword(context),
                    SizedBox(height: 28.v),
                    _buildSignInButton(context),
                    SizedBox(height: 37.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "No Account ?",
                                style: CustomTextStyles
                                    .labelLargeJosefinSansErrorContainer,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        TextButton(
                          onPressed: () {
                            GoRouter.of(context).push('/signUp');
                          },
                          child: Text(
                            "Sign Up",
                            style: CustomTextStyles
                                .labelLargeJosefinSansOnPrimarySemiBold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 27.h,
                        right: 38.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 6.v),
                            child: SizedBox(
                              width: 80.h,
                              child: Divider(
                                color: appTheme.blueGray30002,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              "or Sign in with",
                              style: CustomTextStyles
                                  .labelLargeJosefinSansGray50004,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 6.v),
                            child: SizedBox(
                              width: 85.h,
                              child: Divider(
                                color: appTheme.blueGray30002,
                                indent: 5.h,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 28.v),
                    _buildSignUpWithGoogleButton(context),
                    SizedBox(height: 15.v),
                    _buildSignUpWithFacebookButton(context)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEmail(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 14.h),
        child: CustomTextFormField(
          controller: emailController,
          hintText: "Email",
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

  Widget _buildRowEmail(BuildContext context) {
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

  Widget _buildPassword(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 14.h),
        child: CustomTextFormField(
          controller: passwordController,
          hintText: "Password",
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

  Widget _buildRowPassword(BuildContext context) {
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
  Widget _buildSignInButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Sign in",
      margin: EdgeInsets.only(left: 37.h),
      alignment: Alignment.centerRight,
      onPressed: () {
        GoRouter.of(context).pushReplacement(AppRouter.baseApp);
      },
    );
  }

  Widget _buildSignUpWithGoogleButton(BuildContext context) {
    return CustomOutlinedButton(
      text: "Sign Up with Google",
      margin: EdgeInsets.only(
        left: 24.h,
        right: 26.h,
      ),
    );
  }

  Widget _buildSignUpWithFacebookButton(BuildContext context) {
    return CustomOutlinedButton(
      text: "Sign Up with Facebook",
      margin: EdgeInsets.only(
        left: 24.h,
        right: 26.h,
      ),
    );
  }
}
