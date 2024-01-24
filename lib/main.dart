import 'package:flutter/material.dart';
import 'package:soglink/navigation/navigation.dart';
import 'package:soglink/pages/clinics.dart';
import 'package:soglink/pages/home_page.dart';
import 'package:soglink/pages/profile.dart';
import 'package:soglink/pages/visits/past_visits.dart';

void main (){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navigation(),
    );
  }
}
