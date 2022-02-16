import 'package:beautysalon/pages/account.dart';
import 'package:beautysalon/pages/appointment.dart';
import 'package:beautysalon/pages/appointment_1.dart';
import 'package:beautysalon/pages/appointment_2.dart';
import 'package:beautysalon/pages/book_appointment_1.dart';
import 'package:beautysalon/pages/book_appointment_2.dart';
import 'package:beautysalon/pages/chats.dart';
import 'package:beautysalon/pages/home.dart';
import 'package:beautysalon/pages/home_page1.dart';
import 'package:beautysalon/pages/tab_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../uidata.dart';
import '../book.dart';
import '../users.dart';

var index = 0;

// import 'package:foodapplication/Screens/Components/colors.dart';

class Navbar extends StatefulWidget {
  // const Navbar({Key ? key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  // int _page = 0;
  // GlobalKey _NavKey = GlobalKey();

  // var PagesAll = [Homepage1(),Homepage1(),Homepage1(),Homepage1()];

  // var myindex =0;

  GlobalKey<CurvedNavigationBarState> navigationKey = GlobalKey();
  // final List<Widget> PagesAll = [
  //   Homepage1(),
  //   Bookapp1(),
  //   Bookapp2(),
  //   Appointment(),
  //   Appointment1()
  // ];
  @override
  // void initState() {
  //   super.initState();
  //   final _pageController = PageController();
  // }
  @override
  Widget build(BuildContext context) {
    var itemslist = [
      // IconButton(
      //   onPressed: () {
      //     Navigator.pushNamed(context, UIData.homePageRoute);
      //   },
      // icon:

      Icon(
        Icons.home,
        size: 30,
        color: UIData.mainColor,
      ),

      // ),

      Icon(
        Icons.message,
        size: 30,
        color: UIData.mainColor,
      ),

      Icon(
        Icons.add,
        size: 30,
        color: UIData.mainColor,
      ),

      Icon(
        Icons.favorite,
        color: UIData.mainColor,
        size: 30,
      ),

      Icon(
        Icons.person,
        color: UIData.mainColor,
        size: 30,
      )
    ];

    return CurvedNavigationBar(
      // backgroundColor: Colors.amber,
      // appBar: AppBar(
      //   title: Text("Owais"),
      //   elevation: 0,
      //   centerTitle: true,
      // ),
      // body: PagesAll[index],

      // Center(
      //     child: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Text(
      //       '$index',
      //       style: TextStyle(
      //         color: Colors.black,
      //         fontSize: 120,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //     ElevatedButton(
      //       onPressed: () {
      //         final navigationState = navigationKey.currentState!;
      //         navigationState.setPage(0);
      //       },
      //       style: ElevatedButton.styleFrom(
      //         primary: UIData.mainColor,
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(9)),
      //       ),
      //       child: Text(
      //         "Get Started",
      //         style: TextStyle(
      //           fontWeight: FontWeight.bold,
      //           fontSize: 18,
      //         ),
      //       ),
      //     ),
      //   ],
      // )),

      backgroundColor: Colors.transparent,
      color: UIData.lightColor,
      items: itemslist,
      animationCurve: Curves.easeInOut,
      animationDuration: Duration(milliseconds: 300),
      onTap: (index1) {
        setState(() {
          var key = navigationKey;

          index = index1;
          navigationKey = navigationKey;
        });
        if (index1 == 0) {
          print(navigationKey);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        } else if (index1 == 1) {
          print(navigationKey);
          print(index);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ChatUser()));
        } else if (index1 == 2) {
          print(index);

          Navigator.push(
              context, MaterialPageRoute(builder: (context) => bar()));
        } else if (index1 == 3) {
          print(index);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Appointment2()));
        } else if (index1 == 4) {
          print(index1);

          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Account()));
        }
      },
      letIndexChange: (index) => true,

      // onTap: (index) => setState(()=> this.index = index),
    );

    // final screen_size_width = MediaQuery.of(context).size.width;
    // final screen_size_height = MediaQuery.of(context).size.height;
    // return Scaffold(
    //  bottomNavigationBar: CurvedNavigationBar(
    //     backgroundColor: Colors.transparent,
    //     key: _NavKey,
    //     items: [
    //       Icon((myindex == 0) ? Icons.home_outlined : Icons.home),
    //       Icon((myindex == 1) ? Icons.message : Icons.message_outlined),
    //       Icon((myindex == 2) ? Icons.favorite_border : Icons.favorite),
    //       Icon((myindex == 3) ? Icons.perm_identity : Icons.perm_contact_cal_rounded)
    //     ],
    //       buttonBackgroundColor: Colors.white,
    //     onTap: (index){
    //       setState(() {
    //         myindex = index;
    //       });
    //     },
    //          animationCurve: Curves.fastLinearToSlowEaseIn, color: Colors.orange,
    //   ),
    //   body: PagesAll[myindex],
    // );
  }
}
