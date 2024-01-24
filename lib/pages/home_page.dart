import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(227, 30, 36, 1),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: SafeArea(
              child: Stack(
                children: [
                  Column(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.search),
                                iconSize: 30,
                                color: Colors.white,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.notifications_none),
                                iconSize: 30,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hi, John M.',
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'SF Pro Display',
                                        fontSize: 34,
                                        letterSpacing: 0.37400001287460327,
                                        fontWeight: FontWeight.bold,
                                        height: 1.2058823529411764),
                                  ),
                                  SizedBox(height: 15),
                                  Text(
                                    'Upcoming visits',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'SF Pro Display',
                                        fontSize: 16,
                                        letterSpacing: -0.30000001192092896,
                                        fontWeight: FontWeight.normal,
                                        height: 1.375),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 64,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 433,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                        ),
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 70,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        minimumSize: Size(144, 90),
                                      ),
                                      child: Container(
                                        width: 144,
                                        height: 90,
                                        child: Stack(
                                          children: [
                                            Text(
                                              'Sing Up for Visit',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color:
                                                      Color.fromRGBO(26, 26, 26, 1),
                                                  fontFamily: 'SF Pro Display',
                                                  fontSize: 16,
                                                  letterSpacing: -0.30000001192092896,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.375),
                                            ),
                                            Positioned(
                                              top: 42,
                                              left: 97,
                                              child: Container(
                                                height: 38,
                                                child: Image.asset(
                                                  'lib/icons/pen.png',
                                                  color: Color.fromRGBO(
                                                      142, 160, 171, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        minimumSize: Size(144, 90),
                                      ),
                                      child: Container(
                                        width: 144,
                                        height: 90,
                                        child: Stack(
                                          children: [
                                            Text(
                                              'Visits',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color:
                                                      Color.fromRGBO(26, 26, 26, 1),
                                                  fontFamily: 'SF Pro Display',
                                                  fontSize: 16,
                                                  letterSpacing: -0.30000001192092896,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.375),
                                            ),
                                            Positioned(
                                              top: 42,
                                              left: 97,
                                              child: Icon(Icons.calendar_month,
                                                  size: 36,
                                                  color: Color.fromRGBO(
                                                      142, 160, 171, 1)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        minimumSize: Size(144, 90),
                                      ),
                                      child: Container(
                                        width: 144,
                                        height: 90,
                                        child: Stack(
                                          children: [
                                            Text(
                                              'Analysis',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color:
                                                      Color.fromRGBO(26, 26, 26, 1),
                                                  fontFamily: 'SF Pro Display',
                                                  fontSize: 16,
                                                  letterSpacing: -0.30000001192092896,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.375),
                                            ),
                                            Positioned(
                                              top: 42,
                                              left: 97,
                                              child: Container(
                                                height: 38,
                                                child: Image.asset(
                                                  'lib/icons/medical-report.png',
                                                  color: Color.fromRGBO(
                                                      142, 160, 171, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        minimumSize: Size(144, 90),
                                      ),
                                      child: Container(
                                        width: 144,
                                        height: 90,
                                        child: Stack(
                                          children: [
                                            Text(
                                              'Prescriptions',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color:
                                                      Color.fromRGBO(26, 26, 26, 1),
                                                  fontFamily: 'SF Pro Display',
                                                  fontSize: 16,
                                                  letterSpacing: -0.30000001192092896,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.375),
                                            ),
                                            Positioned(
                                              top: 42,
                                              left: 97,
                                              child: Container(
                                                height: 38,
                                                child: Image.asset(
                                                  'lib/icons/prescription.png',
                                                  color: Color.fromRGBO(
                                                      142, 160, 171, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        minimumSize: Size(144, 90),
                                      ),
                                      child: Container(
                                        width: 144,
                                        height: 90,
                                        child: Stack(
                                          children: [
                                            Text(
                                              'Doctors',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color:
                                                      Color.fromRGBO(26, 26, 26, 1),
                                                  fontFamily: 'SF Pro Display',
                                                  fontSize: 16,
                                                  letterSpacing: -0.30000001192092896,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.375),
                                            ),
                                            Positioned(
                                              top: 42,
                                              left: 97,
                                              child: Container(
                                                height: 38,
                                                child: Image.asset(
                                                  'lib/icons/stethoscope.png',
                                                  color: Color.fromRGBO(
                                                      142, 160, 171, 1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        minimumSize: Size(144, 90),
                                      ),
                                      child: Container(
                                        width: 144,
                                        height: 90,
                                        child: Stack(
                                          alignment: AlignmentDirectional.center,
                                          children: [
                                            Positioned(
                                              top: 15,
                                              left: 1,
                                              child: Icon(Icons.message,
                                                  size: 26,
                                                  color:
                                                      Color.fromRGBO(142, 160, 171, 1)),
                                            ),
                                            Positioned(
                                              top: 15,
                                              right: 1,
                                              child: Container(
                                                height: 22,
                                                child: Image.asset(
                                                  'lib/icons/arrow.png',
                                                  color: Color.fromRGBO(
                                                      142, 160, 171, 1),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'Online Help',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color:
                                                      Color.fromRGBO(26, 26, 26, 1),
                                                  fontFamily: 'SF Pro Display',
                                                  fontSize: 16,
                                                  letterSpacing: -0.30000001192092896,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1.375),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
                  Positioned(
                    top: 140,
                    left: 16,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 380,
                            height: 106,
                            child: Stack(children: <Widget>[
                              Container(
                                  width: 354,
                                  height: 106,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(
                                              0, 0, 0, 0.09000000357627869),
                                          offset: Offset(0, 2),
                                          blurRadius: 8)
                                    ],
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  )),
                              Positioned(
                                  top: 15,
                                  left: 97,
                                  child: Text(
                                    'Surgery',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(26, 26, 26, 1),
                                        fontFamily: 'SF Pro Display',
                                        fontSize: 18,
                                        letterSpacing: -0.30000001192092896,
                                        fontWeight: FontWeight.bold,
                                        height: 1.3333333333333333),
                                  )),
                              Positioned(
                                  top: 70,
                                  left: 97,
                                  child: Text(
                                    'Your Doctor, San Francisco, CA',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(142, 160, 171, 1),
                                        fontFamily: 'SF Pro Display',
                                        fontSize: 14,
                                        letterSpacing: -0.30000001192092896,
                                        fontWeight: FontWeight.normal,
                                        height: 1.4285714285714286),
                                  )),
                              Positioned(
                                  top: 40,
                                  left: 97,
                                  child: Text(
                                    'Dr. John M. Silverstone',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(26, 26, 26, 1),
                                        fontFamily: 'SF Pro Display',
                                        fontSize: 16,
                                        letterSpacing: -0.30000001192092896,
                                        fontWeight: FontWeight.normal,
                                        height: 1.375),
                                  )),
                              Positioned(
                                  top: 16,
                                  right: 40,
                                  child: Text(
                                    '10:30 AM',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Color.fromRGBO(142, 160, 171, 1),
                                        fontFamily: 'SF Pro Display',
                                        fontSize: 14,
                                        letterSpacing: -0.30000001192092896,
                                        fontWeight: FontWeight.normal,
                                        height: 1.4285714285714286),
                                  )),
                              Positioned(
                                  top: 21,
                                  left: 16,
                                  child: Container(
                                      width: 64,
                                      height: 64,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 64,
                                                height: 64,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(10),
                                                    topRight: Radius.circular(10),
                                                    bottomLeft: Radius.circular(10),
                                                    bottomRight: Radius.circular(10),
                                                  ),
                                                  color: Color.fromRGBO(
                                                      243, 246, 248, 1),
                                                ))),
                                        Positioned(
                                            top: 37,
                                            left: 21,
                                            child: Text(
                                              'Mar',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      142, 160, 171, 1),
                                                  fontFamily: 'SF Pro Display',
                                                  fontSize: 14,
                                                  letterSpacing: -0.30000001192092896,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.4285714285714286),
                                            )),
                                        Positioned(
                                            top: 5,
                                            left: 13,
                                            child: Text(
                                              '20',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      142, 160, 171, 1),
                                                  fontFamily: 'SF Pro Display',
                                                  fontSize: 30,
                                                  letterSpacing: -0.40799999237060547,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.1333333333333333),
                                            )),
                                      ]))),
                            ])),
                      ],
                    ),
                  ),
                ],
              ),
          ),
        ),
      ),
    );
  }
}
