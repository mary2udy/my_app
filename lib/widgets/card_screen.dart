import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CardScreen extends StatelessWidget {
  const CardScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 2.h),
        height: 148,
        child: Stack(
          children:  [
              const Image(image: AssetImage('images/img_1.png',),),
              SvgPicture.asset('images/img_1.svg',),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                 appText(title: 'Logistic officer', color: Colors.white.withOpacity(0.8)),
                     const SizedBox(
                     height: 25),
                     const Text('Aron Charles',
                       style: TextStyle(
                           fontStyle: FontStyle.normal,
                           fontWeight: FontWeight.w600,
                           fontSize: 12,
                           color: Colors.white),),
                     const Text('ID: 234223-01',
                       style: TextStyle(
                         fontSize: 12,
                         fontWeight: FontWeight.w400,
                         fontStyle: FontStyle.normal,
                         color: Colors.white,),),
                     const SizedBox(
                       height: 25),
                     Row(
                       children: [
                         const Icon(Icons.location_on,
                           size: 18,
                           color: Colors.white,),
                         const SizedBox(
                           width: 5,
                         ),
                         appText(title: 'Kano', color: Colors.white.withOpacity(0.9),),
                       ],
                     ),
                   ],
                 ),
                 const SizedBox(
                   width: 30,),
                 const CircleAvatar(
                   backgroundColor: Colors.white, radius: 42,
                   child: CircleAvatar(
                     radius: 40, backgroundImage: AssetImage('images/img_5.png'),),),],
      ),
        ],
      ),
    );
  }
}

Widget appText({
  required String title,
  required Color color,
}) =>
    Text(
      title,
      style: TextStyle(
        color: color,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        fontSize: 12,
      ),
    );
