import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cube360/pages/clinic_map_page.dart';
import 'package:cube360/pages/contact_page.dart';
import 'package:cube360/pages/home_page.dart';
import 'package:cube360/pages/volunteer_portal_login_page.dart';
import 'package:cube360/utils/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const VolunteerPortalLoginPage(),
    const ClinicMapPage(),
    const ContactPage(),
  ];

  final List<BottomNavigationBarItem> _bottomNavItems = const [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.location_pin), label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.call), label: ""),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Cube360'),
        ),
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: (index) {
            // FirebaseFirestore.instance.collection("test").add({'hello': "world"});
            setState(() {
              _currentIndex = index;
            });
          },
          items: _bottomNavItems,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}
