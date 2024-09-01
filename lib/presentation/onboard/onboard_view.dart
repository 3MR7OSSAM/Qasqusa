import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storys_app/%20data/utils/color_manger.dart';
import 'package:storys_app/%20data/utils/strings_manger.dart';
import 'package:storys_app/presentation/onboard/components/custom_button.dart';
import 'package:storys_app/%20data/utils/assets_manger.dart';
import 'package:storys_app/presentation/resources/text_styles.dart';


class OnboardView extends StatelessWidget {
  const OnboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Center(child: Image.asset(AssetsManger.onBoardBack)),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(60.r)),
                  color: ColorManger.white,
                ),
                width: double.infinity,
                height: 370.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Text(
                      StringsManger.onBoardTitle,
                      style:TextStyles.textStyle25.copyWith(color: ColorManger.primary1)
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0.w),
                      child: Text(
                        StringsManger.onBoardSubTitle,
                        style:TextStyles.textStyle18.copyWith(color: ColorManger.black),

                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Spacer(),
                    const CustomButton(),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

