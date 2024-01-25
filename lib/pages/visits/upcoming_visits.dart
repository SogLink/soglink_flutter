import 'package:flutter/material.dart';
import 'package:soglink/pages/home_page.dart';
import 'package:soglink/pages/visits/past_visits.dart';

class UpcomingVisits extends StatefulWidget {
  const UpcomingVisits({super.key});

  @override
  State<UpcomingVisits> createState() => _ClinicsState();
}

class _ClinicsState extends State<UpcomingVisits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(227, 30, 36, 1),
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Stack(children: <Widget>[
            Stack(children: <Widget>[
              Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        iconSize: 30,
                        icon: Image.asset(
                          'lib/icons/left-arrow.png',
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Visits',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'SF Pro Display',
                            fontSize: 18,
                            letterSpacing: -0.40799999237060547,
                            fontWeight: FontWeight.normal,
                            height: 1.3333333333333333),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_none,
                          color: Colors.white,
                          size: 34,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 600,
                    padding: const EdgeInsets.symmetric(
                          horizontal: 17, vertical: 17),
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
                        Row(
                          children: [
                            Container(
                              width: 186,
                              height: 32,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary:
                                        Color.fromRGBO(142, 160, 171, 1),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(9))),
                                onPressed: () {},
                                child: Center(
                                  child: Text(
                                    'Upcoming visits',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(
                                            227, 237, 243, 1),
                                        fontFamily: 'SF Pro Display',
                                        fontSize: 14,
                                        letterSpacing: -0.23999999463558197,
                                        fontWeight: FontWeight.normal,
                                        height: 1.4285714285714286),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 186,
                              height: 32,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: 
                                      (context)=> const PastVisits()));
                                },
                                style: ElevatedButton.styleFrom(
                                    primary:
                                        Color.fromRGBO(227, 237, 243, 1),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(9))),
                                child: Center(
                                  child: Text(
                                    'Past visits',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(
                                            142, 160, 171, 1),
                                        fontFamily: 'SF Pro Display',
                                        fontSize: 14,
                                        letterSpacing: -0.23999999463558197,
                                        fontWeight: FontWeight.normal,
                                        height: 1.4285714285714286),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
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
                                        color:
                                            Color.fromRGBO(26, 26, 26, 1),
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
                                        color: Color.fromRGBO(
                                            142, 160, 171, 1),
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
                                        color:
                                            Color.fromRGBO(26, 26, 26, 1),
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
                                    '10:30 AM',
                                    textAlign: TextAlign.right,
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
                                  top: 6,
                                  left: 0,
                                  child: Container(
                                      width: 64,
                                      height: 64,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(
                                            255, 255, 255, 1),
                                      ),
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 64,
                                                height: 64,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10),
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
                                                  fontFamily:
                                                      'SF Pro Display',
                                                  fontSize: 14,
                                                  letterSpacing:
                                                      -0.30000001192092896,
                                                  fontWeight:
                                                      FontWeight.normal,
                                                  height:
                                                      1.4285714285714286),
                                            )),
                                        Positioned(
                                            top: 5,
                                            left: 15,
                                            child: Text(
                                              '20',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      142, 160, 171, 1),
                                                  fontFamily:
                                                      'SF Pro Display',
                                                  fontSize: 30,
                                                  letterSpacing:
                                                      -0.40799999237060547,
                                                  fontWeight:
                                                      FontWeight.normal,
                                                  height:
                                                      1.1333333333333333),
                                            )),
                                      ]))),
                              Positioned(
                                  top: 93,
                                  left: 0,
                                  child: Container(
                                      width: 368,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(
                                            207, 225, 236, 1),
                                      ))),
                            ])),
                        Container(
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
                                        color:
                                            Color.fromRGBO(26, 26, 26, 1),
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
                                        color: Color.fromRGBO(
                                            142, 160, 171, 1),
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
                                        color:
                                            Color.fromRGBO(26, 26, 26, 1),
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
                                    '10:30 AM',
                                    textAlign: TextAlign.right,
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
                                  top: 6,
                                  left: 0,
                                  child: Container(
                                      width: 64,
                                      height: 64,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(
                                            255, 255, 255, 1),
                                      ),
                                      child: Stack(children: <Widget>[
                                        Positioned( 
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 64,
                                                height: 64,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10),
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
                                                  fontFamily:
                                                      'SF Pro Display',
                                                  fontSize: 14,
                                                  letterSpacing:
                                                      -0.30000001192092896,
                                                  fontWeight:
                                                      FontWeight.normal,
                                                  height:
                                                      1.4285714285714286),
                                            )),
                                        Positioned(
                                            top: 5,
                                            left: 15,
                                            child: Text(
                                              '20',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      142, 160, 171, 1),
                                                  fontFamily:
                                                      'SF Pro Display',
                                                  fontSize: 30,
                                                  letterSpacing:
                                                      -0.40799999237060547,
                                                  fontWeight:
                                                      FontWeight.normal,
                                                  height:
                                                      1.1333333333333333),
                                            )),
                                      ]))),
                              Positioned(
                                  top: 93,
                                  left: 0,
                                  child: Container(
                                      width: 368,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(
                                            207, 225, 236, 1),
                                      ))),
                            ])),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ]),
        ));
  }
}
