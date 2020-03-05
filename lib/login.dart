import 'package:flutter/material.dart';
import 'register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'images/9294.png',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 100,
            left: 70,
            child: Center(
              child: Column(
                children: <Widget>[
                  Text(
                    'Travelers',
                    style: TextStyle(
                        fontFamily: 'Mermaid',
                        fontSize: 55,
                        //fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  Text(
                    'Travel Community App',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 19,
                        //fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 50,
            child: Column(
              children: <Widget>[
                Container(
                  height: 70,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Color(0xff978AA9).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.mail_outline,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            'Email Address',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 70,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Color(0xff978AA9).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.lock_outline,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            'Password',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 70,
              width: double.infinity,
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  'Log in to account ',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Poppins', fontSize: 20),
                ),
                color: Color(0xff474B7A),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
