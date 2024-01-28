import 'package:flutter/material.dart';
import 'package:soglink/model/doctors_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Doctors extends StatefulWidget {
  const Doctors({super.key});

  @override
  State<Doctors> createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  List<Doctors> doctors = [];
  DoctorModel docmodel =
      DoctorModel(name: "false", surname: '', speciality: '', data: []);

  String selectedState = 'Select State';
  String selectedCity = 'Select City';
  bool isDataLoaded = false;

  String finalTextToBeDisplayed = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(227, 30, 36, 1),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 700,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                    ),
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: // Figma Flutter Generator Group1Widget - GROUP
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                                width: 342,
                                height: 57,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 24,
                                      left: 55,
                                      child: Text(
                                        'Surgery',
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
                                      top: 56,
                                      left: 0,
                                      child: Container(
                                          width: 342,
                                          height: 1,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(207, 225, 236, 1),
                                          ))),
                                  Positioned(
                                      top: 0,
                                      left: 55,
                                      child: Text(
                                        'Dr. John M. Silverstone',
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
                                      top: 2,
                                      left: 0,
                                      child: //Mask holder Template
                                          Container(
                                        width: 40,
                                        height: 40,
                                        child: ClipOval(
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: -14.285714149475098,
                                                left: -62.85714340209961,
                                                child: Container(
                                                    width: 125.71428680419922,
                                                    height: 97.71428680419922,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/Image1.png'),
                                                          fit: BoxFit.fitWidth),
                                                    ))),
                                          ]),
                                        ),
                                      )),
                                  Positioned(
                                      top: 14,
                                      left: 326,
                                      child: Container(
                                          width: 16,
                                          height: 16,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(255, 255, 255, 1),
                                          ),
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: 3,
                                                left: 5.333333492279053,
                                                child: SvgPicture.asset(
                                                    'assets/images/right.svg',
                                                    semanticsLabel: 'right')),
                                          ]))),
                                ])),
                                Container(
                                width: 342,
                                height: 57,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 24,
                                      left: 55,
                                      child: Text(
                                        'Anesthesioology',
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
                                      top: 56,
                                      left: 0,
                                      child: Container(
                                          width: 342,
                                          height: 1,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(207, 225, 236, 1),
                                          ))),
                                  Positioned(
                                      top: 0,
                                      left: 55,
                                      child: Text(
                                        'Dr. Thomas M.Abruster',
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
                                      top: 2,
                                      left: 0,
                                      child: //Mask holder Template
                                          Container(
                                        width: 40,
                                        height: 40,
                                        child: ClipOval(
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: -14.285714149475098,
                                                left: -62.85714340209961,
                                                child: Container(
                                                    width: 125.71428680419922,
                                                    height: 97.71428680419922,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/Image1.png'),
                                                          fit: BoxFit.fitWidth),
                                                    ))),
                                          ]),
                                        ),
                                      )),
                                  Positioned(
                                      top: 14,
                                      left: 326,
                                      child: Container(
                                          width: 16,
                                          height: 16,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(255, 255, 255, 1),
                                          ),
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: 3,
                                                left: 5.333333492279053,
                                                child: SvgPicture.asset(
                                                    'assets/images/right.svg',
                                                    semanticsLabel: 'right')),
                                          ]))),
                                ])),
                                Container(
                                width: 342,
                                height: 57,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 24,
                                      left: 55,
                                      child: Text(
                                        'Anesthesiology',
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
                                      top: 56,
                                      left: 0,
                                      child: Container(
                                          width: 342,
                                          height: 1,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(207, 225, 236, 1),
                                          ))),
                                  Positioned(
                                      top: 0,
                                      left: 55,
                                      child: Text(
                                        'Dr. Cindy Hsu',
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
                                      top: 2,
                                      left: 0,
                                      child: //Mask holder Template
                                          Container(
                                        width: 40,
                                        height: 40,
                                        child: ClipOval(
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: -14.285714149475098,
                                                left: -62.85714340209961,
                                                child: Container(
                                                    width: 125.71428680419922,
                                                    height: 97.71428680419922,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/Image1.png'),
                                                          fit: BoxFit.fitWidth),
                                                    ))),
                                          ]),
                                        ),
                                      )),
                                  Positioned(
                                      top: 14,
                                      left: 326,
                                      child: Container(
                                          width: 16,
                                          height: 16,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(255, 255, 255, 1),
                                          ),
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: 3,
                                                left: 5.333333492279053,
                                                child: SvgPicture.asset(
                                                    'assets/images/right.svg',
                                                    semanticsLabel: 'right')),
                                          ]))),
                                ])),
                                Container(
                                width: 342,
                                height: 57,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 24,
                                      left: 55,
                                      child: Text(
                                        'General Surgery',
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
                                      top: 56,
                                      left: 0,
                                      child: Container(
                                          width: 342,
                                          height: 1,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(207, 225, 236, 1),
                                          ))),
                                  Positioned(
                                      top: 0,
                                      left: 55,
                                      child: Text(
                                        'Dr. Jessica Brown',
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
                                      top: 2,
                                      left: 0,
                                      child: //Mask holder Template
                                          Container(
                                        width: 40,
                                        height: 40,
                                        child: ClipOval(
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: -14.285714149475098,
                                                left: -62.85714340209961,
                                                child: Container(
                                                    width: 125.71428680419922,
                                                    height: 97.71428680419922,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/Image1.png'),
                                                          fit: BoxFit.fitWidth),
                                                    ))),
                                          ]),
                                        ),
                                      )),
                                  Positioned(
                                      top: 14,
                                      left: 326,
                                      child: Container(
                                          width: 16,
                                          height: 16,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(255, 255, 255, 1),
                                          ),
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: 3,
                                                left: 5.333333492279053,
                                                child: SvgPicture.asset(
                                                    'assets/images/right.svg',
                                                    semanticsLabel: 'right')),
                                          ]))),
                                ])),
                                Container(
                                width: 342,
                                height: 57,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 24,
                                      left: 55,
                                      child: Text(
                                        'Endocrinology',
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
                                      top: 56,
                                      left: 0,
                                      child: Container(
                                          width: 342,
                                          height: 1,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(207, 225, 236, 1),
                                          ))),
                                  Positioned(
                                      top: 0,
                                      left: 55,
                                      child: Text(
                                        'Dr. Bryan John McColgan  ',
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
                                      top: 2,
                                      left: 0,
                                      child: //Mask holder Template
                                          Container(
                                        width: 40,
                                        height: 40,
                                        child: ClipOval(
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: -14.285714149475098,
                                                left: -62.85714340209961,
                                                child: Container(
                                                    width: 125.71428680419922,
                                                    height: 97.71428680419922,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/Image1.png'),
                                                          fit: BoxFit.fitWidth),
                                                    ))),
                                          ]),
                                        ),
                                      )),
                                  Positioned(
                                      top: 14,
                                      left: 326,
                                      child: Container(
                                          width: 16,
                                          height: 16,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(255, 255, 255, 1),
                                          ),
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: 3,
                                                left: 5.333333492279053,
                                                child: SvgPicture.asset(
                                                    'assets/images/right.svg',
                                                    semanticsLabel: 'right')),
                                          ]))),
                                ])),
                                Container(
                                width: 342,
                                height: 57,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 24,
                                      left: 55,
                                      child: Text(
                                        'Neuoanesthesiology',
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
                                      top: 56,
                                      left: 0,
                                      child: Container(
                                          width: 342,
                                          height: 1,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(207, 225, 236, 1),
                                          ))),
                                  Positioned(
                                      top: 0,
                                      left: 55,
                                      child: Text(
                                        'Dr. Gary Alan Goldman',
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
                                      top: 2,
                                      left: 0,
                                      child: //Mask holder Template
                                          Container(
                                        width: 40,
                                        height: 40,
                                        child: ClipOval(
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: -14.285714149475098,
                                                left: -62.85714340209961,
                                                child: Container(
                                                    width: 125.71428680419922,
                                                    height: 97.71428680419922,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/Image1.png'),
                                                          fit: BoxFit.fitWidth),
                                                    ))),
                                          ]),
                                        ),
                                      )),
                                  Positioned(
                                      top: 14,
                                      left: 326,
                                      child: Container(
                                          width: 16,
                                          height: 16,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(255, 255, 255, 1),
                                          ),
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: 3,
                                                left: 5.333333492279053,
                                                child: SvgPicture.asset(
                                                    'assets/images/right.svg',
                                                    semanticsLabel: 'right')),
                                          ]))),
                                ])),
                                Container(
                                width: 342,
                                height: 57,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 24,
                                      left: 55,
                                      child: Text(
                                        'Anesthesiology',
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
                                      top: 56,
                                      left: 0,
                                      child: Container(
                                          width: 342,
                                          height: 1,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(207, 225, 236, 1),
                                          ))),
                                  Positioned(
                                      top: 0,
                                      left: 55,
                                      child: Text(
                                        'Dr. Nancy L Bruder',
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
                                      top: 2,
                                      left: 0,
                                      child: //Mask holder Template
                                          Container(
                                        width: 40,
                                        height: 40,
                                        child: ClipOval(
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: -14.285714149475098,
                                                left: -62.85714340209961,
                                                child: Container(
                                                    width: 125.71428680419922,
                                                    height: 97.71428680419922,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/Image1.png'),
                                                          fit: BoxFit.fitWidth),
                                                    ))),
                                          ]),
                                        ),
                                      )),
                                  Positioned(
                                      top: 14,
                                      left: 326,
                                      child: Container(
                                          width: 16,
                                          height: 16,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(255, 255, 255, 1),
                                          ),
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: 3,
                                                left: 5.333333492279053,
                                                child: SvgPicture.asset(
                                                    'assets/images/right.svg',
                                                    semanticsLabel: 'right')),
                                          ]))),
                                ])),
                                Container(
                                width: 342,
                                height: 57,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 24,
                                      left: 55,
                                      child: Text(
                                        'Surgery',
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
                                      top: 56,
                                      left: 0,
                                      child: Container(
                                          width: 342,
                                          height: 1,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(207, 225, 236, 1),
                                          ))),
                                  Positioned(
                                      top: 0,
                                      left: 55,
                                      child: Text(
                                        'Dr. John M. Silverstone',
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
                                      top: 2,
                                      left: 0,
                                      child: //Mask holder Template
                                          Container(
                                        width: 40,
                                        height: 40,
                                        child: ClipOval(
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: -14.285714149475098,
                                                left: -62.85714340209961,
                                                child: Container(
                                                    width: 125.71428680419922,
                                                    height: 97.71428680419922,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/Image1.png'),
                                                          fit: BoxFit.fitWidth),
                                                    ))),
                                          ]),
                                        ),
                                      )),
                                  Positioned(
                                      top: 14,
                                      left: 326,
                                      child: Container(
                                          width: 16,
                                          height: 16,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(255, 255, 255, 1),
                                          ),
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: 3,
                                                left: 5.333333492279053,
                                                child: SvgPicture.asset(
                                                    'assets/images/right.svg',
                                                    semanticsLabel: 'right')),
                                          ]))),
                                ])),
                                Container(
                                width: 342,
                                height: 57,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 24,
                                      left: 55,
                                      child: Text(
                                        'Surgery',
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
                                      top: 56,
                                      left: 0,
                                      child: Container(
                                          width: 342,
                                          height: 1,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(207, 225, 236, 1),
                                          ))),
                                  Positioned(
                                      top: 0,
                                      left: 55,
                                      child: Text(
                                        'Dr. John M. Silverstone',
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
                                      top: 2,
                                      left: 0,
                                      child: //Mask holder Template
                                          Container(
                                        width: 40,
                                        height: 40,
                                        child: ClipOval(
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: -14.285714149475098,
                                                left: -62.85714340209961,
                                                child: Container(
                                                    width: 125.71428680419922,
                                                    height: 97.71428680419922,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/Image1.png'),
                                                          fit: BoxFit.fitWidth),
                                                    ))),
                                          ]),
                                        ),
                                      )),
                                  Positioned(
                                      top: 14,
                                      left: 326,
                                      child: Container(
                                          width: 16,
                                          height: 16,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(255, 255, 255, 1),
                                          ),
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: 3,
                                                left: 5.333333492279053,
                                                child: SvgPicture.asset(
                                                    'assets/images/right.svg',
                                                    semanticsLabel: 'right')),
                                          ]))),
                                ])),
                                Container(
                                width: 342,
                                height: 57,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 24,
                                      left: 55,
                                      child: Text(
                                        'Surgery',
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
                                      top: 56,
                                      left: 0,
                                      child: Container(
                                          width: 342,
                                          height: 1,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(207, 225, 236, 1),
                                          ))),
                                  Positioned(
                                      top: 0,
                                      left: 55,
                                      child: Text(
                                        'Dr. John M. Silverstone',
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
                                      top: 2,
                                      left: 0,
                                      child: //Mask holder Template
                                          Container(
                                        width: 40,
                                        height: 40,
                                        child: ClipOval(
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: -14.285714149475098,
                                                left: -62.85714340209961,
                                                child: Container(
                                                    width: 125.71428680419922,
                                                    height: 97.71428680419922,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/Image1.png'),
                                                          fit: BoxFit.fitWidth),
                                                    ))),
                                          ]),
                                        ),
                                      )),
                                  Positioned(
                                      top: 14,
                                      left: 326,
                                      child: Container(
                                          width: 16,
                                          height: 16,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(255, 255, 255, 1),
                                          ),
                                          child: Stack(children: <Widget>[
                                            Positioned(
                                                top: 3,
                                                left: 5.333333492279053,
                                                child: SvgPicture.asset(
                                                    'assets/images/right.svg',
                                                    semanticsLabel: 'right')),
                                          ]))),
                                ])),
                          ],
                        ),
                      ),
                ),
              ],
            ),
          ),
        ));
  }
}
