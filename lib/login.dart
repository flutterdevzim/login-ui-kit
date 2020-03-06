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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  height: 90,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Color(0xff978AA9).withOpacity(0.7),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Email Address',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          textAlign: TextAlign.start,
                          onChanged: (value) {
                            email = value;
                          },
                          decoration: InputDecoration(
                            hintText: 'Your Email',
                            hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  height: 90,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Color(0xff978AA9).withOpacity(0.7),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Password',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        TextField(
                          obscureText: true,
                          textAlign: TextAlign.start,
                          onChanged: (value) {
                            email = value;
                          },
                          decoration: InputDecoration(
                            focusColor: Colors.white,
                            hintText: 'Your Password',
                            hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 470,
            left: 93,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Register()));
              },
              child: Text(
                'Create a new account',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
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
