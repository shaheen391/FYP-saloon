import 'package:beautysalon/pages/home.dart';
import 'package:beautysalon/pages/signup.dart';
import 'package:beautysalon/uidata.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
   bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: UIData.lightColor,
        body: Stack(
          children: [
            new AppBar(
              brightness: Brightness.dark,
              backgroundColor: Colors.transparent,
              // toolbarHeight: 220,
              elevation: 0.0,
              automaticallyImplyLeading: false,
              flexibleSpace: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: UIData.lighterColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(28),
                      bottomRight: Radius.circular(28)),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      left: 10,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                        ),
                        iconSize: 30,
                        color: Colors.white,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                    // Positioned(
                    //     top: 31,
                    //     left: 50,
                    //     child: Text(
                    //       "Back",
                    //       style: TextStyle(
                    //         color: Colors.white,
                    //         fontSize: 22,
                    //         fontWeight: FontWeight.bold,
                    //       ),
                    //     )),
                    // Positioned(
                    //     top: 25,
                    //     right: 10,
                    //     child: Text(
                    //       "Login",
                    //       style: TextStyle(
                    //         color: Colors.white,
                    //         fontSize: 22,
                    //         fontWeight: FontWeight.bold,
                    //       ),
                    //     )),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 200,
              height: 700,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: UIData.lighterColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(28),
                        topRight: Radius.circular(28)),
                  ),
                  child: Stack(children: [
                    // Positioned(
                    //   left: 0,
                    //   child: Container(
                    //       width: MediaQuery.of(context).size.width,
                    //       child: CircleAvatar(
                    //         backgroundImage:
                    //             AssetImage('assets/images/avator.png'),
                    //         backgroundColor: Colors.white,
                    //         radius: 40,
                    //       )),
                    // ),
                    Positioned(
                      top: 84,
                      left: 142,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          "Welcome!",
                          style: TextStyle(color: UIData.mainColor, fontSize: 25),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 40,
                      child: Text(
                        "Username",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(
                              187,
                              178,
                              179,
                              1.0,
                            )),
                      ),
                    ),
                    Positioned(
                      top: 170,
                      left: 40,
                      child: Container(
                          width: 300,
                          child: TextField(
                              // controller: email,
                              style: TextStyle(
                                  color: UIData.mainColor),
                              decoration: InputDecoration(
                                hintText: 'Enter your username',
                                hintStyle: TextStyle(
                                    color: UIData.mainColor),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: UIData.mainColor,
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: UIData.mainColor,
                                  ),
                                ),
                              ))),
                    ),
                    Positioned(
                      top: 250,
                      left: 40,
                      child: Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(
                              187,
                              178,
                              179,
                              1.0,
                            )),
                      ),
                    ),
                    Positioned(
                      top: 300,
                      left: 40,
                      child: Container(
                          width: 300,
                          child: TextField(
                              // controller: pass,
                              style: TextStyle(
                                  color: UIData.mainColor),
                              decoration: InputDecoration(
                                hintText: 'Enter your password',
                                hintStyle: TextStyle(
                                    color: UIData.mainColor),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: UIData.mainColor,
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: UIData.mainColor,
                                  ),
                                ),
                              ))),
                    ),
                    Positioned(
                        top: 300,
                        left: 110,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: TextButton(
                            onPressed: () {},
                            child: Text('FORGOT?',
                                style: TextStyle(
                                  color: UIData.mainColor,
                                  fontSize: 15,
                                )),
                          ),
                        )),
                    Positioned(
                      top: 350,
                      right: 142,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Checkbox(
                          activeColor: UIData.mainColor,
                          checkColor: Colors.white,
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                      ),
                    ),
                    Positioned(
                        top: 365,
                        right: 200,
                        child: Text(
                          "Save password",
                          style: TextStyle(
                            color: UIData.mainColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ])),
            ),
            Positioned(
              top: 650,
              left: 40,
              height: 50,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Container(
                  child: ElevatedButton(
                onPressed: () {
                 Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HomePage()));
                },
                style: ElevatedButton.styleFrom(
                  primary: UIData.mainColor,
                ),
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              )),
            ),
            Positioned(
                top: 715,
                left: 90,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Signup()));
                    },
                    child: Text('Sign Up',
                        style: TextStyle(
                          color: UIData.mainColor,
                          fontSize: 17,
                          decoration: TextDecoration.underline,
                          decorationColor: UIData.mainColor,
                          decorationThickness: 4,
                          decorationStyle: TextDecorationStyle.solid,
                        )),
                  ),
                )),
            Positioned(
                top: 730,
                left: 72,
                child: Text(
                  "Don\'t Have An Account?",
                  style: TextStyle(
                    color: Color.fromRGBO(
                      187,
                      178,
                      179,
                      1.0,
                    ),
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ],
        ));
  }
}