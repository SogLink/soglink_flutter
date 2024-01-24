import 'package:flutter/material.dart';
import 'package:soglink/pages/visits/upcoming_visits.dart';

import '../pages/clinics.dart';
import '../pages/home_page.dart';
import '../pages/profile.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
int index = 0;
final screens = [
HomePage(),
UpcomingVisits(),
Clinics(),
Profile(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: 
      NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.white,
        ),
        child: NavigationBar(
          height: 50,
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() {
            this.index = index;
          }),
          destinations: [
            NavigationDestination(
                icon: Image.asset(
                  'lib/icons/home.png',
                  color: Color.fromRGBO(142, 160, 171, 1),
                  height: 28,
                ),
                label: ''),
                NavigationDestination(
                icon: Image.asset(
                  'lib/icons/pen.png',
                  color: Color.fromRGBO(142, 160, 171, 1),
                  height: 28,
                ),
                label: '', ),
                NavigationDestination(
                icon: Image.asset(
                  'lib/icons/clinic.png',
                  color: Color.fromRGBO(142, 160, 171, 1),
                  height: 28,
                ),
                label: ''),
                NavigationDestination(
                icon: Image.asset(
                  'lib/icons/user.png',
                  color: Color.fromRGBO(142, 160, 171, 1),
                  height: 28,
                ),
                label: ''),
          ],
        ),
      ),
    );
  }
}