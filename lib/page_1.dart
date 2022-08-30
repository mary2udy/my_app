import 'package:flutter/material.dart';
import 'package:my_app/widgets/card_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);
  static String id = 'page_1';

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    //
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
          padding: EdgeInsets.only(top: 8.h),
          child: Column(
              children:  [
                  const CardScreen(),
                SizedBox(height: 3.h),
                  Container(
                      height: 6.h,
                      margin: EdgeInsets.symmetric(horizontal: 2.h),
                      child: Material(
                      elevation: 20,
                      shadowColor: Colors.black38,
                      child:
                          TextField(
                                  textAlign: TextAlign.start,
                                  cursorColor: Colors.black12,
                                  autocorrect: true,
                                  decoration: InputDecoration(fillColor: Colors.white, filled: true,
                                    hintText: 'search client', hintStyle: TextStyle(fontSize: 12,
                                      fontStyle: FontStyle.normal, fontWeight: FontWeight.w400,
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: const BorderSide(color: Colors.white)
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide.none
                                    ),
                                  ),
                                ),
                          ),
                  ),
                SizedBox(
                  height: 3.h,
                ),
                Expanded(
                  child: ListView.builder(
                  itemCount: myProfiles.length,
                 itemBuilder: (context,index)=> myList(
                     urlImage: myProfiles[index].urlImage,
                     subtitle: myProfiles[index].subtitle),
                ),
                    ),
              ],
          ),
      ),
    );
  }
}

List<Profile> myProfiles = [   Profile(urlImage: 'images/img_5.png', subtitle: 'Java'),
  Profile(urlImage: 'images/img_3.png', subtitle: 'Python'),
  Profile(urlImage: 'images/img_2.png', subtitle: 'CSS'),
  Profile(urlImage: 'images/img_4.png', subtitle: 'HTML'),
  Profile(urlImage: 'images/img_5.png', subtitle: 'Node.Js'),
];

class Profile{
    final String urlImage;
    final String subtitle;

    Profile({
      required this.urlImage,required this.subtitle,
});

}

Widget myList({
  required String urlImage,
  required String subtitle,
}) =>
    Container(
      margin: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.h),
      padding: EdgeInsets.only(top: 5),
      height: 10.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[50],
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(urlImage),
        ),
        title: const Text('John Doe'),
        subtitle: Text(subtitle),
      ),
    );




//
// List<String> MyList = ['one','two','three','four','five'];
//
// class Person{
//   String name;
//   int age;
//
//   Person({required this.age,required this.name});
// }
//
// List<Person> persons=[Person(age: 2, name: 'name'),Person(age: 3, name: 'john')];