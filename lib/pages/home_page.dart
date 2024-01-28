import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:soglink/network/api/url_api.dart';
import 'package:soglink/pages/visits/upcoming_visits.dart';
import 'package:soglink/theme.dart';
import 'package:http/http.dart' as http;
import 'package:soglink/model/city_model.dart';
import 'package:soglink/model/state_model.dart';
import 'package:soglink/widgets/prime_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();

  final BaseUrl _countryStateCityRepo = BaseUrl();

  List<String> countries = [];
  List<String> states = [];
  List<String> cities = [];
  CountryStateModel countryStateModel =
      CountryStateModel(error: false, msg: '', data: []);

  CitiesModel citiesModel = CitiesModel(error: false, msg: '', data: []);

  String selectedState = 'Select State';
  String selectedCity = 'Select City';
  bool isDataLoaded = false;

  String finalTextToBeDisplayed = '';

  getStates() async {
    //
    for (var element in countryStateModel.data) {
      //
      setState(() {
        resetStates();
        resetCities();
      });
      //
      for (var state in element.states) {
        states.add(state.name);
      }
    }
    //
  }

  getCities() async {
    //
    isDataLoaded = false;
    citiesModel = await _countryStateCityRepo.getCities(state: selectedState);
    setState(() {
      resetCities();
    });
    for (var city in citiesModel.data) {
      cities.add(city);
    }
    isDataLoaded = true;
    setState(() {});
    //
  }

  resetCities() {
    cities = [];
    cities.add('Select City');
    selectedCity = 'Select City';
    finalTextToBeDisplayed = '';
  }

  resetStates() {
    states = [];
    states.add('Select State');
    selectedState = 'Select State';
    finalTextToBeDisplayed = '';
  }

  @override
  void initState() {
    getStates();
    super.initState();
  }

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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
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
                    height: 600,
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
                          height: 90,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      showModalBottomSheet(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.vertical(
                                                top: Radius.circular(15.0)),
                                          ),
                                          backgroundColor:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          isScrollControlled: true,
                                          context: context,
                                          constraints: BoxConstraints.expand(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.96,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width),
                                          builder: (_) {
                                            return Container(
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 17),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                            width: 45,
                                                            height: 4,
                                                            decoration:
                                                                const BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        100),
                                                                topRight: Radius
                                                                    .circular(
                                                                        100),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        100),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        100),
                                                              ),
                                                              color: Color
                                                                  .fromRGBO(
                                                                      142,
                                                                      160,
                                                                      171,
                                                                      1),
                                                            ))
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Text(
                                                      'Step 1',
                                                      style: boldTextStyle
                                                          .copyWith(
                                                              fontSize: 26),
                                                    ),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Text(
                                                      'Select state and city/town',
                                                      style: boldTextStyle
                                                          .copyWith(
                                                              fontSize: 18,
                                                              color: Color
                                                                  .fromRGBO(
                                                                      142,
                                                                      160,
                                                                      171,
                                                                      1)),
                                                    ),
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.45,
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'State',
                                                                style: regularTextStyle.copyWith(
                                                                    fontSize:
                                                                        16,
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            142,
                                                                            160,
                                                                            171,
                                                                            1)),
                                                              ),
                                                              DropdownButton(
                                                                  isExpanded:
                                                                      true,
                                                                  value:
                                                                      selectedState,
                                                                  items: states
                                                                      .map((String state) => DropdownMenuItem(
                                                                          value:
                                                                              state,
                                                                          child: Text(
                                                                              state)))
                                                                      .toList(),
                                                                  onChanged:
                                                                      (selectedValue) {
                                                                    //
                                                                    setState(
                                                                        () {
                                                                      selectedState =
                                                                          selectedValue!;
                                                                    });
                                                                    if (selectedState !=
                                                                        'Select State') {
                                                                      getCities();
                                                                    }
                                                                    //
                                                                  }),
                                                              const SizedBox(
                                                                  height: 20),
                                                              Text(
                                                                'City',
                                                                style: regularTextStyle.copyWith(
                                                                    fontSize:
                                                                        16,
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            142,
                                                                            160,
                                                                            171,
                                                                            1)),
                                                              ),
                                                              DropdownButton(
                                                                  isExpanded:
                                                                      true,
                                                                  value:
                                                                      selectedCity,
                                                                  items: cities
                                                                      .map((String city) => DropdownMenuItem(
                                                                          value:
                                                                              city,
                                                                          child: Text(
                                                                              city)))
                                                                      .toList(),
                                                                  onChanged:
                                                                      (selectedValue) {
                                                                    //
                                                                    setState(
                                                                        () {
                                                                      selectedCity =
                                                                          selectedValue!;
                                                                    });
                                                                    if (selectedCity !=
                                                                        'Select City') {
                                                                      finalTextToBeDisplayed =
                                                                          "State: $selectedState\nCity: $selectedCity";
                                                                    }
                                                                    //
                                                                  }),
                                                              Text(
                                                                'Selected Branch',
                                                                style: regularTextStyle.copyWith(
                                                                    fontSize:
                                                                        16,
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            142,
                                                                            160,
                                                                            171,
                                                                            1)),
                                                              ),
                                                              SizedBox(
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    0.45,
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width -
                                                                      130,
                                                                  height: 60,
                                                                  child:
                                                                      ElevatedButton(
                                                                    onPressed:
                                                                        () {
                                                                      showModalBottomSheet(
                                                                          context:
                                                                              context,
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.vertical(top: Radius.circular(15.0)),
                                                                          ),
                                                                          backgroundColor: Color.fromRGBO(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              1),
                                                                          isScrollControlled:
                                                                              true,
                                                                          constraints: BoxConstraints.expand(
                                                                              height: MediaQuery.of(context).size.height * 0.96,
                                                                              width: MediaQuery.of(context).size.width),
                                                                          builder: (_) {
                                                                            return Container(
                                                                                child: Padding(
                                                                              padding: EdgeInsets.symmetric(horizontal: 17),
                                                                              child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                SizedBox(
                                                                                  height: 10,
                                                                                ),
                                                                                Row(
                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    Container(
                                                                                        width: 45,
                                                                                        height: 4,
                                                                                        decoration: const BoxDecoration(
                                                                                          borderRadius: BorderRadius.only(
                                                                                            topLeft: Radius.circular(100),
                                                                                            topRight: Radius.circular(100),
                                                                                            bottomLeft: Radius.circular(100),
                                                                                            bottomRight: Radius.circular(100),
                                                                                          ),
                                                                                          color: Color.fromRGBO(142, 160, 171, 1),
                                                                                        ))
                                                                                  ],
                                                                                ),
                                                                                SizedBox(
                                                                                  height: 20,
                                                                                ),
                                                                                Text(
                                                                                  'Step 2',
                                                                                  style: boldTextStyle.copyWith(fontSize: 26),
                                                                                ),
                                                                                
                                                                              ]),
                                                                            ));
                                                                          });
                                                                    },
                                                                    child: Text(
                                                                      'Next',
                                                                      style: regularTextStyle.copyWith(
                                                                          fontSize:
                                                                              18),
                                                                    ),
                                                                    style: ElevatedButton.styleFrom(
                                                                        primary: Color.fromRGBO(
                                                                            142,
                                                                            160,
                                                                            171,
                                                                            1),
                                                                        shape: RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(20))),
                                                                  ),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            );
                                          });
                                    },
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
                                                color: Color.fromRGBO(
                                                    26, 26, 26, 1),
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 16,
                                                letterSpacing:
                                                    -0.30000001192092896,
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
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const UpcomingVisits()));
                                    },
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
                                                color: Color.fromRGBO(
                                                    26, 26, 26, 1),
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 16,
                                                letterSpacing:
                                                    -0.30000001192092896,
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
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                                color: Color.fromRGBO(
                                                    26, 26, 26, 1),
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 16,
                                                letterSpacing:
                                                    -0.30000001192092896,
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
                                                color: Color.fromRGBO(
                                                    26, 26, 26, 1),
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 16,
                                                letterSpacing:
                                                    -0.30000001192092896,
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
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                                color: Color.fromRGBO(
                                                    26, 26, 26, 1),
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 16,
                                                letterSpacing:
                                                    -0.30000001192092896,
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
                                      primary:
                                          Color.fromARGB(255, 218, 204, 204),
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
                                                color: Color.fromRGBO(
                                                    142, 160, 171, 1)),
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
                                                color: Color.fromRGBO(
                                                    83, 81, 81, 1),
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 16,
                                                letterSpacing:
                                                    -0.30000001192092896,
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
                                                fontFamily: 'SF Pro Display',
                                                fontSize: 14,
                                                letterSpacing:
                                                    -0.30000001192092896,
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
                                                letterSpacing:
                                                    -0.40799999237060547,
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
