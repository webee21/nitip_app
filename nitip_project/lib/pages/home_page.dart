import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nitip_project/pages/screens/home.dart';
import 'package:nitip_project/pages/screens/favorite.dart';
import 'package:nitip_project/pages/screens/history.dart';
import 'package:nitip_project/pages/screens/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Color.fromARGB(0, 255, 255, 255)));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  final screens = [
    HomePage__(),
    Favorite(),
    History(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_index],
      bottomNavigationBar: GNav(
        gap: 8,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: "Home",
          ),
          GButton(
            icon: Icons.favorite,
            text: "Favorite",
          ),
          GButton(
            icon: Icons.history,
            text: "History",
          ),
          GButton(
            icon: Icons.person,
            text: "Profile",
          ),
        ],
        selectedIndex: _index,
        onTabChange: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
