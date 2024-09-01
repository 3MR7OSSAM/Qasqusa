import 'package:flutter/material.dart';
import 'package:storys_app/%20data/utils/color_manger.dart';
import 'package:storys_app/presentation/home/home_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storys_app/presentation/onboard/onboard_view.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // Set to your design's base size
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: ColorManger.white,
          ),
          home: const OnboardView(),

        );
      },
    );
  }
}



