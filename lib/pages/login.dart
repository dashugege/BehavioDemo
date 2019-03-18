import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Container(
            height: 157.0,
            width: double.infinity,
            padding: EdgeInsets.all(11.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/login-bg.png'),
                  fit: BoxFit.fitHeight),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Image.asset(
                  'assets/images/login-header-logo.png',
                  width: 139.0,
                  height: 67.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.0, top: 5.0),
                  child: Text(
                    '欢迎您',
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.normal,
                        fontSize: 14.0),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(),
          )
        ],
      )),
    );
  }
}
