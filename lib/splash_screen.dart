import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String id = 'splash_screen';

  @override
  Widget build(BuildContext context) {
    navigateAgterDelay(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 30.h),
          child: Column(
                children: [
                  SvgPicture.asset('images/img.svg'),
                  const CircularProgressIndicator(
                    color: Colors.red
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
navigateAgterDelay(BuildContext context)async{
  await Future.delayed(const Duration(seconds: 3));
  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
}