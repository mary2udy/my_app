import 'package:flutter/material.dart';
import 'package:my_app/login.dart';
import 'package:my_app/page_1.dart';
import 'package:my_app/splash_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (buildContext , orientation , screenType ) {
        return MaterialApp(
          initialRoute: SplashScreen.id,
          routes: {
            SplashScreen.id : (context)=> const SplashScreen(),
            Login.id : (context)=> const Login(),
            Page1.id : (context) => const Page1(),
          },
        );
      },
    );
  }
}
