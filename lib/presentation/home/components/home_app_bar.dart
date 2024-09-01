import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storys_app/%20data/utils/assets_manger.dart';
import 'package:storys_app/%20data/utils/color_manger.dart';
import 'package:storys_app/%20data/utils/strings_manger.dart';
import 'package:storys_app/presentation/resources/text_styles.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Text(
                StringsManger.homeUserName,
                style: TextStyles.textStyle25.copyWith(color: ColorManger.primary1),
                textDirection: TextDirection.rtl,
              ),
              Text(
                StringsManger.homeWelcome,
                style:
                    TextStyles.textStyle25.copyWith(color: ColorManger.black),
                textDirection: TextDirection.rtl,
              ),
            ],
          ),
        ),
        const Spacer(),
        SizedBox(
          width: 150.w,
          height: 150.h,
          child: Stack(
            children: [
              Positioned(
                  right: -30.w,
                  top: -10.h,
                  child: Image.asset(
                    AssetsManger.homeEclipse,
                    width: 150,
                    height: 150,
                  )),
              Positioned(
                right: 15,
                top: 20,
                child: Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: ColorManger.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Icon(
                    Icons.person,
                    color: ColorManger.primary1,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
