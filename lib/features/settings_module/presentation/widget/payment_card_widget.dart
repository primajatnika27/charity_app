import 'package:charity_app/core/app_export.dart';
import 'package:charity_app/core/utils/constant.dart';
import 'package:flutter/material.dart';

class PaymentCardWidget extends StatelessWidget {
  const PaymentCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.v),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CustomImageView(
                imagePath: ImageConstant.imgMasterCard,
                height: 30.h,
                width: 30.h,
              ),
            ),
            Expanded(
              flex: 8,
              child: Padding(
                padding: EdgeInsets.only(left: 15.v),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Master Card",
                      style: CustomTextStyles.titleMediumJost17.copyWith(
                        color: appTheme.blueGray40002,
                      ),
                    ),
                    SizedBox(
                      height: 6.v,
                    ),
                    Text(
                      "**** **** **** 1234",
                      style: CustomTextStyles.bodySmallRobotoBlueGray40001
                          .copyWith(
                        fontSize: 14.fSize,
                        color: appTheme.gray900,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Radio(
                value: null,
                groupValue: null,
                onChanged: (Null value) {},
                fillColor: MaterialStateProperty.all(appTheme.blueGray40002),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
