//
// import 'package:flutter/material.dart';
// import 'package:storys_app/presentation/home/home_view.dart';
// import 'package:storys_app/presentation/onboard/onboard_view.dart';
// import 'package:storys_app/presentation/resources/strings_manger.dart';
// import 'package:storys_app/presentation/story_teller/story_teller_view.dart';
//
//
// class Routes {
//   static const String splashRoute = "/";
//   static const String home = "/home_view";
//   static const String storyTeller = "/book_details";
//   static const String searchView = "/search_view";
//
// }
//
// // class RouteGenerator {
// //   static Route<dynamic> getRoute(RouteSettings settings) {
// //     switch (settings.name) {
// //       case Routes.splashRoute:
// //         return transitionPage(const OnboardView());
// //       case Routes.storyTeller:
// //         return transitionPage(const StoryTellerView());
// //       case Routes.home:
// //         return transitionPage(const HomeView());
// //       default:
// //         return unDefinedRoute();
// //     }
// //   }
//
//   static Route<dynamic> unDefinedRoute() {
//     return MaterialPageRoute(
//       builder: (context) => const SafeArea(
//         child: Scaffold(
//           body: Center(
//             child: Text(StringsManger.noRouteFound, style: TextStyle(fontSize: 35,color: Colors.black,fontFamily: 'Cairo')),
//           ),
//         ),
//       ),
//     );
//   }
//
//   static transitionPage(Widget page) {
//     return PageRouteBuilder(
//       pageBuilder: (context, animation, secondaryAnimation) => page,
//       transitionsBuilder: (context, animation, secondaryAnimation, child) {
//         var tween = Tween(
//           begin: const Offset(1, 0),
//           end: Offset.zero,
//         ).chain(CurveTween(curve: Curves.easeInOut));
//         var offsetAnimation = animation.drive(tween);
//         return SlideTransition(
//           position: offsetAnimation,
//           child: child,
//         );
//       },
//     );
//   }
// }
