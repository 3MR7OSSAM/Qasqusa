import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storys_app/%20data/utils/color_manger.dart';
import 'package:storys_app/presentation/home/home_view.dart';
import 'package:storys_app/%20data/utils/strings_manger.dart';
import 'package:storys_app/presentation/resources/text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomeView()));
      },
      child: Container(
        width: 250.w,
        height: 45.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          gradient: const LinearGradient(
            colors: [
              ColorManger.primary1,
              ColorManger.primary2,
            ],
          ),
        ),
        child: Center(
          child: Text(
            StringsManger.onBoardButtonTitle,
            style:TextStyles.textStyle14.copyWith(color: ColorManger.white),

          ),
        ),
      ),
    );
  }
}
