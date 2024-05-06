import 'package:charity_app/app/router/app_router.dart';
import 'package:charity_app/core/app_export.dart';
import 'package:charity_app/core/utils/constant.dart';
import 'package:charity_app/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
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
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 126.v),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 60.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgThumbsUp,
                        height: 79.v,
                        width: 51.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 6.h,
                          top: 39.v,
                          bottom: 5.v,
                        ),
                        child: Text(
                          "Funds Start",
                          style: theme.textTheme.headlineLarge,
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  "Get set Funded!",
                  style: CustomTextStyles.labelLargeJosefinSansBlueGray70013,
                ),
                Spacer(),
                CustomElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).pushReplacement(AppRouter.signIn);
                  },
                  width: 194.h,
                  text: "Let’s Get Started",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
