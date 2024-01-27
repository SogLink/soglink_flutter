import 'package:flutter/material.dart';
import 'package:soglink/theme.dart';
import 'package:soglink/widgets/general_logo.dart';
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
TextEditingController eMail = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController repeatPassword = TextEditingController();

  bool _secureText = true;
  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  registerSubmit() async {
    var url = Uri.parse("uri");
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
                      color: Color.fromRGBO(175, 126, 225, 1),
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
                    controller:  nameController,
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
                    controller: eMail,
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
                    controller: password,
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
                  'Repeat Password',
                  style: regularTextStyle.copyWith(
                      fontSize: 14, color: Color.fromRGBO(142, 160, 171, 1)),
                ),
                Container(
                  height: 40,
                  child: TextField(
                    controller: repeatPassword,
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
                    SizedBox(height: 30,),
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
                      'Already have an account?',
                      style: boldTextStyle.copyWith(fontSize: 18),
                    ),
                    Text(
                      'Log In',
                      style: boldTextStyle.copyWith(fontSize: 18),
                    ),
                  ],
                ),
                Column()
              ],
            ),
          )
        ],
      ),
    );
  }
}
