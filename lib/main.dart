import 'package:bottom_nav_bar_flutter/Body_Screen.dart';
import 'package:bottom_nav_bar_flutter/Contact_Screen.dart';
import 'package:bottom_nav_bar_flutter/Profile_Screen.dart';
import 'package:bottom_nav_bar_flutter/Schedule_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  int selectedIndex = 0;

  void pageShifter(index){
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> mySCreens = [
    BodyScreen(),
    ContactScreen(),
    ScheduleScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mySCreens[selectedIndex],
      
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          unselectedItemColor: Colors.red,
          selectedItemColor: Colors.black,
          onTap: pageShifter,
          items: [
            
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled,color: Colors.black,),
              label: "Home"
            ),
            
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_mail,color: Colors.black),
                label: "Contact"
            ),
            
            BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm,color: Colors.black),
                label: "Schedule"
            ),
            
            BottomNavigationBarItem(
                icon: Icon(Icons.person,color: Colors.black),
                label: "Profile"
            )
            
          ]),
    );
  }
}


