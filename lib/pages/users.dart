import 'package:beautysalon/models/messages.dart';
import 'package:beautysalon/pages/chats.dart';
import 'package:flutter/material.dart';

import '../uidata.dart';
import 'Bottom/bottm.dart';

class Users extends StatefulWidget {
  const Users({Key? key}) : super(key: key);

  @override
  _UsersState createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: UIData.mainColor,
          leading: Icon(
            Icons.menu,
            color: UIData.lightColor,
          ),
          title: Padding(
            padding: const EdgeInsets.only(right: 45),
            child: Center(
              child: Text(
                "Chats",
                style: TextStyle(color: UIData.lightColor),
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            //  Row(
            //    crossAxisAlignment: CrossAxisAlignment.start,
            //    children: [
            //      Container(
            //        child: Text("Messages",style: TextStyle(
            //          fontSize: 18,
            //          color: UIData.mediumColor

            //        ),),
            //      ),
            //    ],
            //  )

            Expanded(
              child: Container(
               
                height: screen_size_height,
               width: screen_size_width,
                child: ListView.builder(
                    itemCount: Message.messages.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        tileColor: Colors.grey.shade200,
                        horizontalTitleGap: 5.0,
                        onTap: (){
                          Navigator.pushNamed(context, '/chatPageRoute',arguments: Message.messages[index]);
                        },                        contentPadding: EdgeInsets.symmetric(horizontal: 2.0,vertical: 8.0),
                        leading: CircleAvatar(
                          radius: 32.0,
                          backgroundImage: AssetImage(Message.messages[index].avator),
                        ),
                        title: Text(Message.messages[index].user,style: TextStyle(color:UIData.mainColor,fontWeight: FontWeight.bold),),
                        subtitle:Text(Message.messages[index].message),
                        trailing: Text(Message.messages[index].time),
                      );
                    }),
              ),
            ),
          ],
        ),
         bottomNavigationBar: Navbar(),
         );
  }
}
