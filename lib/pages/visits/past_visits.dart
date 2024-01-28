import 'package:flutter/material.dart';
import 'package:soglink/pages/visits/upcoming_visits.dart';

class PastVisits extends StatefulWidget {
  const PastVisits({super.key});

  @override
  State<PastVisits> createState() => _ClinicsState();
}

class _ClinicsState extends State<PastVisits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(227, 30, 36, 1),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: SafeArea(
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
                      height: 800,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                        ),
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 17, vertical: 17),
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
                                            Color.fromRGBO(227, 237, 243, 1),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(9))),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const UpcomingVisits()));
                                    },
                                    child: Center(
                                      child: Text(
                                        'Upcoming visits',
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
                                Container(
                                  width: 186,
                                  height: 32,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary:
                                            Color.fromRGBO(142, 160, 171, 1),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(9))),
                                    child: Center(
                                      child: Text(
                                        'Past visits',
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
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ]),
          ),
        ));
  }
}
