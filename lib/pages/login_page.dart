import 'package:flutter/material.dart';
import 'package:soglink/theme.dart';
import 'package:soglink/widgets/general_logo.dart';
import 'package:soglink/widgets/prime_button.dart';
import 'package:http/http.dart' as http;

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<LogInPage> {
  bool _secureText = true;
  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  loginSubmit() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 70,
          ),
          Container(
            padding: EdgeInsets.all(50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "SogLink",
                    style: boldTextStyle.copyWith(
                        fontSize: 32, color: Color.fromRGBO(142, 160, 171, 1)),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Text(
                  'Phone number',
                  style: regularTextStyle.copyWith(
                      fontSize: 14, color: Color.fromRGBO(142, 160, 171, 1)),
                ),
                Container(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefix: Text(
                        '+998',
                        style: TextStyle(
                            color: Color.fromRGBO(142, 160, 171, 1),
                            fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Container(
                    width: 368,
                    height: 1,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(207, 225, 236, 1),
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Password',
                  style: regularTextStyle.copyWith(
                      fontSize: 14, color: Color.fromRGBO(142, 160, 171, 1)),
                ),
                Container(
                  height: 50,
                  child: TextField(
                    obscureText: _secureText,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: showHide,
                        icon: _secureText
                            ? Icon(
                                Icons.visibility_off,
                                color: Color.fromRGBO(142, 160, 171, 1),
                              )
                            : Icon(
                                Icons.visibility,
                                color: Color.fromRGBO(142, 160, 171, 1),
                              ),
                      ),
                      border: InputBorder.none,
                      hintText: 'Enter password',
                      hintStyle: lightTextStyle.copyWith(
                        fontSize: 15,
                        color: Color.fromRGBO(142, 160, 171, 1),
                      ),
                    ),
                  ),
                ),
                Container(
                    width: 368,
                    height: 1,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(207, 225, 236, 1),
                    )),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: ButtonPrime(
                    text: 'SING IN',
                    onTap: () {},
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: boldTextStyle.copyWith(fontSize: 18),
                    )
                  ],
                ),
                SizedBox(height: 50,),
                Center(
                  child: ButtonPrime(
                    text: 'SING UP',
                    onTap: () {},
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
