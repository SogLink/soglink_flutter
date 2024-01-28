import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:soglink/network/api/url_api.dart';
import 'package:soglink/pages/login_page.dart';
import 'package:soglink/theme.dart';
import 'package:soglink/widgets/prime_button.dart';
import 'package:http/http.dart' as http;

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController secondNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _secureText = true;
  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  registerSubmit() async {
    var registerUrl = Uri.parse(BaseUrl.apiregister);
    final response = await http.post(registerUrl, body: {
      "name": nameController,
      "secondName": secondNameController,
      "email": emailController,
      "password": passwordController,
    });
    final data = jsonDecode(response.body);
    int value = data['value'];
    String message = data['message'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 88,
                    child: Image.asset(
                      'lib/icons/key.png',
                      color: Color
                                                                        .fromRGBO(
                                                                            142,
                                                                            160,
                                                                            171,
                                                                            1),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Name',
                  style: regularTextStyle.copyWith(
                      fontSize: 14, color: Color.fromRGBO(142, 160, 171, 1)),
                ),
                Container(
                  height: 40,
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
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
                  'Second name',
                  style: regularTextStyle.copyWith(
                      fontSize: 14, color: Color.fromRGBO(142, 160, 171, 1)),
                ),
                Container(
                  height: 40,
                  child: TextField(
                    controller: secondNameController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
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
                  'Email',
                  style: regularTextStyle.copyWith(
                      fontSize: 14, color: Color.fromRGBO(142, 160, 171, 1)),
                ),
                Container(
                  height: 40,
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
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
                  height: 40,
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                    width: 368,
                    height: 1,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(207, 225, 236, 1),
                    )),
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
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: lightTextStyle.copyWith(fontSize: 18),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LogInPage()),
                            (route) => false);
                      },
                      child: Text('Sing Up', style: boldTextStyle.copyWith(fontSize: 18),),
                    ),
                  ],
                ),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
