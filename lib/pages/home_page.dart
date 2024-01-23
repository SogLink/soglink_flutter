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
      body: Container(
          width: 415,
          height: 812,
          decoration: BoxDecoration(
            color: Color.fromRGBO(162, 1, 7, 1),
          ),
          child: Stack(children: <Widget>[
            Positioned(
                top: 0,
                left: 0,
                child: Container(
                    width: 425,
                    height: 139,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(162, 1, 7, 1),
                    ),
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 88,
                          left: 16,
                          child: Text(
                            'Hi, John M.',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'SF Pro Display',
                                fontSize: 34,
                                letterSpacing: 0.37400001287460327,
                                fontWeight: FontWeight.bold,
                                height: 1.2058823529411764),
                          )),
                      Positioned(
                        top: 41,
                        left: 2,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.search),
                          iconSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        top: 51,
                        left: 360,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.notifications_none),
                          iconSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ]))),
            Positioned(
                top: 246,
                left: 0,
                child: Container(
                    width: 412,
                    height: 566,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ))),
            Positioned(
                top: 154,
                left: 16,
                child: Text(
                  'Upcoming visits',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'SF Pro Display',
                      fontSize: 16,
                      letterSpacing: -0.30000001192092896,
                      fontWeight: FontWeight.normal,
                      height: 1.375),
                )),
            Positioned(
                top: 192,
                left: 28,
                child: Container(
                    width: 380,
                    height: 106,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
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
                              ))),
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
                                          color:
                                              Color.fromRGBO(243, 246, 248, 1),
                                        ))),
                                Positioned(
                                    top: 37,
                                    left: 21,
                                    child: Text(
                                      'Mar',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(142, 160, 171, 1),
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
                                          color:
                                              Color.fromRGBO(142, 160, 171, 1),
                                          fontFamily: 'SF Pro Display',
                                          fontSize: 30,
                                          letterSpacing: -0.40799999237060547,
                                          fontWeight: FontWeight.normal,
                                          height: 1.1333333333333333),
                                    )),
                              ]))),
                    ]))),
            Positioned(
              top: 323,
              left: 16,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  minimumSize: Size(184, 90),
                ),
                child: Container(
                  width: 134,
                  height: 90,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          'Sing Up for Visit',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(26, 26, 26, 1),
                              fontFamily: 'SF Pro Display',
                              fontSize: 16,
                              letterSpacing: -0.30000001192092896,
                              fontWeight: FontWeight.bold,
                              height: 1.375),
                        ),
                      ),
                      Positioned(
                          left: 97,
                          top: 42,
                          child: Container(
                            height: 34,
                            child: Image.asset(
                              'lib/icons/pen.png',
                              color: Color.fromRGBO(142, 160, 171, 1),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 323,
              left: 216,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  minimumSize: Size(184, 90),
                ),
                child: Container(
                  width: 134,
                  height: 90,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          'Visits',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(26, 26, 26, 1),
                              fontFamily: 'SF Pro Display',
                              fontSize: 16,
                              letterSpacing: -0.30000001192092896,
                              fontWeight: FontWeight.bold,
                              height: 1.375),
                        ),
                      ),
                      Positioned(
                        top: 42,
                        left: 97,
                        child: Icon(
                          Icons.calendar_month,
                          size: 36,
                          color: Color.fromRGBO(142, 160, 171, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 426,
              left: 16,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  minimumSize: Size(184, 90),
                ),
                child: Container(
                  width: 134,
                  height: 90,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          'Analysis',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(26, 26, 26, 1),
                              fontFamily: 'SF Pro Display',
                              fontSize: 16,
                              letterSpacing: -0.30000001192092896,
                              fontWeight: FontWeight.bold,
                              height: 1.375),
                        ),
                      ),
                      Positioned(
                          left: 97,
                          top: 42,
                          child: Container(
                            height: 38,
                            child: Image.asset(
                              'lib/icons/medical-report.png',
                              color: Color.fromRGBO(142, 160, 171, 1),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 426,
              left: 216,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  minimumSize: Size(184, 90),
                ),
                child: Container(
                  width: 134,
                  height: 90,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          'Prescriptions',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(26, 26, 26, 1),
                              fontFamily: 'SF Pro Display',
                              fontSize: 16,
                              letterSpacing: -0.30000001192092896,
                              fontWeight: FontWeight.bold,
                              height: 1.375),
                        ),
                      ),
                      Positioned(
                          left: 97,
                          top: 42,
                          child: Container(
                            height: 36,
                            child: Image.asset(
                              'lib/icons/prescription.png',
                              color: Color.fromRGBO(142, 160, 171, 1),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 529,
              left: 16,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  minimumSize: Size(184, 90),
                ),
                child: Container(
                  width: 134,
                  height: 90,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          'Doctors',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(26, 26, 26, 1),
                              fontFamily: 'SF Pro Display',
                              fontSize: 16,
                              letterSpacing: -0.30000001192092896,
                              fontWeight: FontWeight.bold,
                              height: 1.375),
                        ),
                      ),
                      Positioned(
                          left: 97,
                          top: 42,
                          child: Container(
                            height: 36,
                            child: Image.asset(
                              'lib/icons/stethoscope.png',
                              color: Color.fromRGBO(142, 160, 171, 1),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 529,
              left: 216,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  minimumSize: Size(184, 90),
                ),
                child: Container(
                  width: 134,
                  height: 90,
                  child: Stack(
                    children: [
                      Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                              height: 34,
                              child: Icon(
                                Icons.message,
                                color: Colors.red,
                                size: 24,
                              ))),
                      Positioned(
                        top: 9,
                        right: 0,
                        child: Container(
                          height: 16,
                          child: Image.asset(
                            'lib/icons/arrow.png',
                            color: Color.fromRGBO(142, 160, 171, 1),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 32,
                        left: 26,
                        child: Text(
                          'Online Help',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(26, 26, 26, 1),
                              fontFamily: 'SF Pro Display',
                              fontSize: 16,
                              letterSpacing: -0.30000001192092896,
                              fontWeight: FontWeight.bold,
                              height: 1.375),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ])),
    );
  }
}
