import 'package:flutter/material.dart';
import 'package:soglink/pages/home_page.dart';

class Nabigation extends StatefulWidget {
  const Nabigation({super.key});

  @override
  State<Nabigation> createState() => _NabigationState();
}

class _NabigationState extends State<Nabigation> {
int index = 0;
  final screens = [
    HomePage(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.red,
        ),
        child: NavigationBar(
          height: 60,
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
                label: 'HomeScreen'),
            NavigationDestination(
                icon: Image.asset(
                  'lib/icons/pen.png',
                  color: Color.fromRGBO(142, 160, 171, 1),
                  height: 28,
                ),
                label: 'SingUp'),
            NavigationDestination(
                icon: Image.asset(
                  'lib/icons/clinic.png',
                  color: Color.fromRGBO(142, 160, 171, 1),
                  height: 28,
                ),
                label: 'Clinics'),
            NavigationDestination(
                icon: Image.asset(
                  'lib/icons/user.png',
                  color: Color.fromRGBO(142, 160, 171, 1),
                  height: 28,
                ),
                label: 'Profile'),
          ],
        ),
      ),
    );
  }
}