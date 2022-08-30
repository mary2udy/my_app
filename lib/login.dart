import 'package:flutter/material.dart';
import 'package:my_app/constant.dart';
import 'package:my_app/page_1.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  static String id = 'login';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;

  bool _isLoading = true;

  loginUser() async {
    setState(() {
      _isLoading = !_isLoading;
    });
    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      _isLoading = !_isLoading;
    });
    Navigator.pushNamed(context, Page1.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 44.h,
              height: 7.h,
              child: TextField(
                cursorColor: Colors.black12,
                textAlign: TextAlign.start,
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Email',
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            SizedBox(
              width: 44.h,
              height: 7.h,
              child: TextField(
                cursorColor: Colors.black12,
                textAlign: TextAlign.start,
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Password',
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(
                  side: BorderSide(
                    color: Colors.redAccent,
                    width: 0.2.h,
                  ),
                  checkColor: Colors.white,
                  value: isChecked,
                  activeColor: Colors.redAccent,
                  onChanged: (newValue) {
                    setState(() {
                      isChecked = newValue!;
                    });
                  },
                ),
                appText(title: 'Remember me'),
                SizedBox(
                  width: 11.h,
                ),
                appText(title: 'Forgot Password?'),
              ],
            ),
            SizedBox(height: 15.h),
            SizedBox(
              height: 7.h,
              width: 44.h,
              child:  MaterialButton(
                      onPressed: (){loginUser();},
                color: Colors.redAccent,
                      child: _isLoading ? signText(title: 'Sign in', color: Colors.white)
                      : const CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 3.0,
                      )),),
            SizedBox(height: 1.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                appText(title: 'Don\'t have an account? '),
                signText(title: 'Sign up', color: Colors.redAccent)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget appText({
  required String title,
}) =>
    Text(
      title,
      style: TextStyle(
        color: Colors.black.withOpacity(0.5),
        fontStyle: FontStyle.normal,
        fontSize: 15.5.sp,
        fontWeight: FontWeight.w400,
      ),
    );

Widget signText({
  required String title,
  required Color color,
}) =>
    Text(
      title,
      style: TextStyle(
          color: color,
          fontSize: 17.sp,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal),
    );
