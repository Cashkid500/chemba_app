import 'dart:developer';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';

import '../dashboard/dashboard.dart';
import '../security/security.dart';
import '../support/support.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    // HomeScreen(),
    //
    DashboardScreen(),
    
  
  Column(
  children: [
    Container(
      height: 90,
      margin: EdgeInsets.only(top: 31, left: 15),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset('assets/images/chemba.png', height: 40,), // Adjusted the image size
          SizedBox(width: 20),
          Expanded(
            child: Text(
              'Profile',
              style:GoogleFonts.manrope(
                textStyle: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff528265)),
                  ),
            ),
          ),
        ],
      ),
    ),
    Row(
      children: [
        Container(
          height: 114.0,
          width: 110.0,
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.only(top: 5.0, left: 30.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff528265)),
          child: Center(
            child: Text(
              'DM',
              style:GoogleFonts.manrope(
                textStyle: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.w800,
                  color: Color(0xffFFFFFF)),),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Column(
            children: [
              Center(
                child: Text(
                  'DAVID MBUGUA',
                  style:GoogleFonts.manrope(
                textStyle: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w800,
                  ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 5.0,
                  right: 45.0,
                ),
                child: Text(
                  'david@gmail.com',
                  style:GoogleFonts.manrope(
                textStyle: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  Padding(
          padding: const EdgeInsets.only(top: 30, left: 19, right: 20),
          child: Container(
            width: 298,
            height: 63,
            padding: EdgeInsets.only(left: 30, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffD2D9D1),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    'Points:',
                    style:GoogleFonts.manrope(
                textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: Text(
                    '1,000',
                    style:GoogleFonts.manrope(
                textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),),
                  ),
                ),
              ],
            ),
          ),
      ),
      Padding(
          padding: const EdgeInsets.only(top: 20, left: 19, right: 20),
          child: Container(
            width: 298,
            height: 63,
            padding: EdgeInsets.only(left: 30, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffD2D9D1),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Image.asset('assets/images/Help.png'),
                ),
                Expanded(
                  child: Text(
                    'Help & Support',
                    style:GoogleFonts.manrope(
                textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 19, right: 20),
          child: Container(
            width: 298,
            height: 63,
            padding: EdgeInsets.only(left: 30, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffD2D9D1),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Image.asset('assets/images/Security.png'),
                ),
                Expanded(
                  child: Text(
                    'Security & Privacy',
                    style:GoogleFonts.manrope(
                textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 90, left: 19, right: 20),
          child: Container(
            width: 298,
            height: 63,
            padding: EdgeInsets.only(left: 30, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffD2D9D1),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Image.asset('assets/images/Logout.png'),
                ),
                Expanded(
                  child: Text(
                    'Log out',
                    style:GoogleFonts.manrope(
                textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),),
                  ),
                ),
              ],
            ),
          ),
        ),
  ],
),

Support(),

Security(),
  ];
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    log(_selectedIndex.toString());
    return Scaffold(
      body: SingleChildScrollView(
        child: _screens[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color(0xff528265),
            icon: Image.asset(
              'assets/images/Home.png',
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.reorder_outlined,
              size: 40,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/Leaf.png'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/Vector.png',
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}




