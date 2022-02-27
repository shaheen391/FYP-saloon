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

var pageindex = 0;

// import 'package:foodapplication/Screens/Components/colors.dart';

class Navbar extends StatefulWidget {
  // const Navbar({Key ? key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  GlobalKey<CurvedNavigationBarState> navigationKey = GlobalKey();

  @override
  @override
  Widget build(BuildContext context) {
    var itemslist = [
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
      backgroundColor: Colors.transparent,
      color: UIData.lightColor,
      items: itemslist,
      animationCurve: Curves.easeInOut,
      animationDuration: Duration(milliseconds: 300),
      onTap: (index1) {
        print("domaodoo smos oamok indexx $index1");

        print("domaodoo smos nnnenweunun  page $pageindex");
        setState(() {
          pageindex = index1;
        });
        if (index1 == 0) {
          print("domaodoo smos oamok indexx $index1");

          print("domaodoo smos nnnenweunun  page $pageindex");

          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        } else if (index1 == 1) {
          print("domaodoo smos oamok indexx $index1");

          print("domaodoo smos nnnenweunun  page $pageindex");

          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ChatUser()));
        } else if (index1 == 2) {
          print("domaodoo smos oamok indexx $index1");

          print("domaodoo smos nnnenweunun  page $pageindex");

          Navigator.push(
              context, MaterialPageRoute(builder: (context) => bar()));
        } else if (index1 == 3) {
          print("domaodoo smos oamok indexx $index1");

          print("domaodoo smos nnnenweunun  page $pageindex");

          print("page index $pageindex");

          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Appointment2()));
        } else if (index1 == 4) {
          print("domaodoo smos oamok indexx $index1");

          print("domaodoo smos nnnenweunun  page $pageindex");

          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Account()));
        }
      },
      letIndexChange: (pageindex) => true,
    );
  }
}
