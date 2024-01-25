import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soglink/pages/clinics.dart';
import 'package:soglink/pages/home_page.dart';
import 'package:soglink/pages/profile.dart';
import 'package:soglink/pages/login_page.dart';
import 'package:soglink/pages/register_page.dart';
import 'package:soglink/pages/visits/past_visits.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider<ValueNotifier<int>>.value(
        value: ValueNotifier<int>(0),
        child: LogInPage(),
      ),
    );
  }
}

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  final List<Widget> _screens = [
    HomePage(),
    Clinics(),
    Profile(),
  ];

  void onTappedBar(int index) {
    Provider.of<ValueNotifier<int>>(context, listen: false).value = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[Provider.of<ValueNotifier<int>>(context).value],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Color.fromRGBO(255, 255, 255, 1),
        selectedItemColor: Colors.red,
        onTap: onTappedBar,
        currentIndex: Provider.of<ValueNotifier<int>>(context).value,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'lib/icons/home.png',
                color: Color.fromRGBO(142, 160, 171, 1),
                height: 28,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(
                'lib/icons/clinic.png',
                color: Color.fromRGBO(142, 160, 171, 1),
                height: 28,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(
                'lib/icons/user.png',
                color: Color.fromRGBO(142, 160, 171, 1),
                height: 28,
              ),
              label: ''),
        ],
      ),
    );
  }
}
