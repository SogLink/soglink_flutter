import 'package:flutter/material.dart';

class PastVisits extends StatefulWidget {
  const PastVisits({super.key});

  @override
  State<PastVisits> createState() => _ClinicsState();
}

class _ClinicsState extends State<PastVisits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: 415,
            height: 812,
            decoration: BoxDecoration(
              color: Color.fromRGBO(227, 30, 36, 1),
            ),
            child: Stack(children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      width: 415,
                      height: 88,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 56,
                            left: 176,
                            child: Text(
                              'Visits',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 18,
                                  letterSpacing: -0.40799999237060547,
                                  fontWeight: FontWeight.normal,
                                  height: 1.3333333333333333),
                            )),
                        Positioned(
                            top: 36,
                            left: 16,
                            child: 
                            IconButton(
                              onPressed: (){},
                              iconSize: 30,
                              icon: Image.asset(
                              'lib/icons/left-arrow.png',
                              color: Colors.white,
                            ),
                              )),
                        Positioned(
                            top: 36,
                            left: 360,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.notifications_none,
                              color: Colors.white,
                              size: 34,
                              ),
                            ),
                            ),
                      ]))),
              Positioned(
                  top: 88,
                  left: 0,
                  child: Container(
                      width: 412,
                      height: 732,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                        ),
                        color: Color.fromRGBO(255, 255, 255, 1),
                     ))), 
              Positioned(
                  top: 170,
                  left: 17,
                  child: Container(
                      width: 368,
                      height: 94,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 81,
                            child: Text(
                              'Anesthesiology',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(26, 26, 26, 1),
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 18,
                                  letterSpacing: -0.30000001192092896,
                                  fontWeight: FontWeight.normal,
                                  height: 1.3333333333333333),
                            )),
                        Positioned(
                            top: 55,
                            left: 81,
                            child: Text(
                              'Your Doctor, Oakland, CA',
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
                            top: 25,
                            left: 81,
                            child: Text(
                              'Dr. Thomas M. Armbruster',
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
                            top: 1,
                            right: 1,
                            child: Text(
                              '11:30 AM',
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
                            top: 6,
                            left: 0,
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
                                      left: 15,
                                      child: Text(
                                        '10',
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
                        Positioned(
                            top: 93,
                            left: 0,
                            child: Container(
                                width: 368,
                                height: 1,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(207, 225, 236, 1),
                                ))),
                      ]))),
              Positioned(
                  top: 282,
                  left: 17,
                  child: Container(
                      width: 368,
                      height: 94,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 81,
                            child: Text(
                              'Surgery',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(26, 26, 26, 1),
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 18,
                                  letterSpacing: -0.30000001192092896,
                                  fontWeight: FontWeight.normal,
                                  height: 1.3333333333333333),
                            )),
                        Positioned(
                            top: 55,
                            left: 81,
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
                            top: 25,
                            left: 81,
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
                            top: 1,
                            right: 1,
                            child: Text(
                              '09:30 AM',
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
                            top: 6,
                            left: 0,
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
                                      left: 23,
                                      child: Text(
                                        '5',
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
                        Positioned(
                            top: 93,
                            left: 0,
                            child: Container(
                                width: 368,
                                height: 1,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(207, 225, 236, 1),
                                ))),
                      ]))),
              Positioned(
                  top: 394,
                  left: 17,
                  child: Container(
                      width: 368,
                      height: 94,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 81,
                            child: Text(
                              'General Surgery',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(26, 26, 26, 1),
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 18,
                                  letterSpacing: -0.30000001192092896,
                                  fontWeight: FontWeight.normal,
                                  height: 1.3333333333333333),
                            )),
                        Positioned(
                            top: 55,
                            left: 81,
                            child: Text(
                              'Your Doctor, Oakland, CA',
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
                            top: 25,
                            left: 81,
                            child: Text(
                              'Dr. Jessica Brown',
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
                            top: 1,
                            right: 1,
                            child: Text(
                              '02:00 PM',
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
                            top: 6,
                            left: 0,
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
                                        'Feb',
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
                                      left: 15,
                                      child: Text(
                                        '27',
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
                        Positioned(
                            top: 93,
                            left: 0,
                            child: Container(
                                width: 368,
                                height: 1,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(207, 225, 236, 1),
                                ))),
                      ]))),
              Positioned(
                  top: 506,
                  left: 17,
                  child: Container(
                      width: 368,
                      height: 94,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 81,
                            child: Text(
                              'Endocrinology',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(26, 26, 26, 1),
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 18,
                                  letterSpacing: -0.30000001192092896,
                                  fontWeight: FontWeight.normal,
                                  height: 1.3333333333333333),
                            )),
                        Positioned(
                            top: 55,
                            left: 81,
                            child: Text(
                              'Your Doctor, Oakland, CA',
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
                            top: 25,
                            left: 81,
                            child: Text(
                              'Dr. Bryan John McColgan',
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
                            top: 1,
                            right: 1,
                            child: Text(
                              '08:30 AM',
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
                            top: 6,
                            left: 0,
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
                                        'Feb',
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
                                      left: 25,
                                      child: Text(
                                        '1',
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
                        Positioned(
                            top: 93,
                            left: 0,
                            child: Container(
                                width: 368,
                                height: 1,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(207, 225, 236, 1),
                                ))),
                      ]))),
              Positioned(
                  top: 106,
                  left: 203,
                  child: Container(
                      width: 186,
                      height: 36,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Stack(children: <Widget>[   
                        Positioned(
                            top: 2,
                            left: 0,
                            child: Container(
                                width: 186,
                                height: 32,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(9),
                                    topRight: Radius.circular(9),
                                    bottomLeft: Radius.circular(9),
                                    bottomRight: Radius.circular(9),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(
                                            142, 159, 171, 0.6000000238418579),
                                        offset: Offset(0, 14),
                                        blurRadius: 20)
                                  ],
                                  color: Color.fromRGBO(142, 160, 171, 1),
                                ))),
                        Positioned(
                            top: 7,
                            left: 65,
                            child: Text(
                              'Past visits',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 14,
                                  letterSpacing: -0.23999999463558197,
                                  fontWeight: FontWeight.normal,
                                  height: 1.4285714285714286),
                            )),
                      ]))),
              Positioned(
                  top: 106,
                  left: 17,
                  child: Container(
                      width: 186,
                      height: 36,
                      child: Stack(children: <Widget>[
                            Positioned(
                            top: 2,
                            left: 0,
                            child: Container(
                                width: 186,
                                height: 32,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(9),
                                    topRight: Radius.circular(9),
                                    bottomLeft: Radius.circular(9),
                                    bottomRight: Radius.circular(9),
                                  ),
                                  color: Color.fromRGBO(227, 237, 243, 1),
                                ))),
                        Positioned(
                            top: 7,
                            left: 37,
                            child: Text(
                              'Upcoming visits',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(142, 160, 171, 1),
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 14,
                                  letterSpacing: -0.23999999463558197,
                                  fontWeight: FontWeight.normal,
                                  height: 1.4285714285714286),
                            )),
                      ]))),
            ])));
  }
}
