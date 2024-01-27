import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:soglink/network/api/url_api.dart';
import 'package:soglink/pages/home_page.dart';
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
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _secureText = true;
  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  loginSubmit() async {
    var urlLogin = Uri.parse(BaseUrl.apilogin);
    final response = await http.post(urlLogin, body: {
      "email": emailController.text,
      "password": passwordController.text,
    });
    final data = jsonDecode(response.body);
    int value = data['value'];
    String message = data['message'];
    if (value == 1) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          title: Text("Information"),
          content: Text(message),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                      (route) => false);
                },
                child: Text('Ok'))
          ],
        ),
      );
      setState(() {});
    } else {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => AlertDialog(
                title: Text("Information"),
                content: Text(message),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("ok"))
                ],
              ));
      setState(() {});

    }
  }

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
                        fontSize: 32, color: Color.fromRGBO(175, 126, 225, 1)),
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
                  height: 40,
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
                    onTap: () {
                      if (emailController.text.isEmpty || passwordController.text.isEmpty){
                        showDialog(context: context, 
                        builder: (context) => AlertDialog(
                          title: Text('Warning'),
                          content: Text('Please, enter the fields'),
                          actions: [
                            TextButton(onPressed: (){
                              Navigator.pop(context);
                            }, child: Text('Ok'))
                          ],
                        ));
                      }else{
                        loginSubmit();
                      }
                    },
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
                SizedBox(
                  height: 50,
                ),
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
