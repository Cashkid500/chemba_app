import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  int toggleTab = 1;

  @override
  void initState() {
    super.initState();
    toggleTab = 1;
  }

  @override
  Widget build(BuildContext context) {
    return 
    // Scaffold(
      // body: 
      SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 248,
              height: 85.56,
              margin: EdgeInsets.only(top: 40, left: 15),
              child: Image.asset('assets/images/chemba.png'),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      toggleTab = 1;
                    });
                  },
                  child: Container(
                    width: 87.0,
                    height: 42.0,
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: toggleTab == 1 ? Color(0xff528265) : null,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        // Set the border color here
                        width: toggleTab == 1
                            ? 0
                            : 2.0, // Set the border width here
                        style: BorderStyle
                            .solid, // Set the border style (solid, dashed, dotted, etc.)
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Events",
                        style: TextStyle(
                          color: toggleTab == 1 ? Colors.white : Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      toggleTab = 2;
                    });
                  },
                  child: Container(
                    width: 87.0,
                    height: 42,
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: toggleTab == 2 ? Color(0xff528265) : null,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        // Set the border color here
                        width: toggleTab == 2
                            ? 0
                            : 2.0, // Set the border width here
                        style: BorderStyle
                            .solid, // Set the border style (solid, dashed, dotted, etc.)
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "FAQ",
                        style: TextStyle(
                            color: toggleTab == 2 ? Colors.white : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      toggleTab = 3;
                    });
                  },
                  child: Container(
                    width: 87.0,
                    height: 42,
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: toggleTab == 3 ? Color(0xff528265) : null,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        // Set the border color here
                        width: toggleTab == 3
                            ? 0
                            : 2.0, // Set the border width here
                        style: BorderStyle
                            .solid, // Set the border style (solid, dashed, dotted, etc.)
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Educate",
                        style: TextStyle(
                            color: toggleTab == 3 ? Colors.white : Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Events
            if (toggleTab == 1)
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                  ),
                  Center(child: Image.asset('assets/images/Sanitation.png')),
                  SizedBox(
                    height: 4,
                  ),
                  Center(
                    child: Text(
                      'Kibera Clean up 16th May 2023',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Center(child: Image.asset('assets/images/Blank 1.png')),
                  SizedBox(
                    height: 4,
                  ),
                  Center(
                    child: Text(
                      'Kisumu Recycling Bins installation\n                 19th May 2023',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Center(child: Image.asset('assets/images/Blank 2.png')),
                ],
              ),
              
              // FAQ
            if (toggleTab == 2)
              
          Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 19, right: 20),
                    child: Column(
                      children: [
                        Container(
                          width: 298,
                          height: 44,
                          padding: EdgeInsets.only(
                              left: 5,
                              right: 10), // Add right padding to the text
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffD2D9D1),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 4), // Add left padding to the text
                                  child: Text(
                                    'What is Chemba and how does it work?',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 4), // Add right padding to the image
                                child: Image.asset(
                                    'assets/images/File Download.png'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 19, right: 20),
                    child: Column(
                      children: [
                        Container(
                          width: 298,
                          height: 44,
                          padding: EdgeInsets.only(
                              left: 5,
                              right: 10), // Add right padding to the text
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffD2D9D1),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 4), // Add left padding to the text
                                  child: Text(
                                    'What is Chemba and how does it work?',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 4), // Add right padding to the image
                                child: Image.asset(
                                    'assets/images/File Download.png'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 19, right: 20),
                    child: Column(
                      children: [
                        Container(
                          width: 298,
                          height: 44,
                          padding: EdgeInsets.only(
                              left: 5,
                              right: 10), // Add right padding to the text
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffD2D9D1),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 4), // Add left padding to the text
                                  child: Text(
                                    'What is Chemba and how does it work?',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 4), // Add right padding to the image
                                child: Image.asset(
                                    'assets/images/File Download.png'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 19, right: 20),
                    child: Column(
                      children: [
                        Container(
                          width: 298,
                          height: 44,
                          padding: EdgeInsets.only(
                              left: 5,
                              right: 10), // Add right padding to the text
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffD2D9D1),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 4), // Add left padding to the text
                                  child: Text(
                                    'What is Chemba and how does it work?',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 4), // Add right padding to the image
                                child: Image.asset(
                                    'assets/images/File Download.png'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 19, right: 20),
                    child: Column(
                      children: [
                        Container(
                          width: 298,
                          height: 44,
                          padding: EdgeInsets.only(
                              left: 5,
                              right: 10), // Add right padding to the text
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffD2D9D1),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 4), // Add left padding to the text
                                  child: Text(
                                    'What is Chemba and how does it work?',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 4), // Add right padding to the image
                                child: Image.asset(
                                    'assets/images/File Download.png'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 19, right: 20),
                    child: Column(
                      children: [
                        Container(
                          width: 298,
                          height: 44,
                          padding: EdgeInsets.only(
                              left: 5,
                              right: 10), // Add right padding to the text
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffD2D9D1),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 4), // Add left padding to the text
                                  child: Text(
                                    'What is Chemba and how does it work?',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 4), // Add right padding to the image
                                child: Image.asset(
                                    'assets/images/File Download.png'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 19, right: 20),
                    child: Column(
                      children: [
                        Container(
                          width: 298,
                          height: 44,
                          padding: EdgeInsets.only(
                              left: 5,
                              right: 10), // Add right padding to the text
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffD2D9D1),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 4), // Add left padding to the text
                                  child: Text(
                                    'What is Chemba and how does it work?',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 4), // Add right padding to the image
                                child: Image.asset(
                                    'assets/images/File Download.png'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 19, right: 20),
                    child: Column(
                      children: [
                        Container(
                          width: 298,
                          height: 44,
                          padding: EdgeInsets.only(
                              left: 5,
                              right: 10), // Add right padding to the text
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffD2D9D1),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 4), // Add left padding to the text
                                  child: Text(
                                    'What is Chemba and how does it work?',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 4), // Add right padding to the image
                                child: Image.asset(
                                    'assets/images/File Download.png'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 19, right: 20),
                    child: Column(
                      children: [
                        Container(
                          width: 298,
                          height: 44,
                          padding: EdgeInsets.only(
                              left: 5,
                              right: 10), // Add right padding to the text
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffD2D9D1),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 4), // Add left padding to the text
                                  child: Text(
                                    'What is Chemba and how does it work?',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 4), // Add right padding to the image
                                child: Image.asset(
                                    'assets/images/File Download.png'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //.......................... Educate
              if (toggleTab == 3) 
              Column(mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 25, left: 19, right: 20),
                    child: Column(
                      children: [
                        Container(
                          width: 298,
                          height: 60,
                          padding: EdgeInsets.only(
                              left: 30), // Add padding to the text
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffD2D9D1),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'What is waste?',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    right:
                                        10), // Add right padding to the image
                                child: Image.asset(
                                    'assets/images/File Download.png'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding:
                        const EdgeInsets.only(top: 15, left: 19, right: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: 298,
                                height: 217,
                                padding: EdgeInsets.only(left: 30, right: 10, top: 30),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffD2D9D1),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Waste Management',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right:
                                                  10),
                                            child: Image.asset(
                                                'assets/images/File Download 2.png'),
                                          ),
                                        ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text("This are activities that are aimed in the reduction of adverse effects of waste on human health, the environment, planetary resources and aesthetics, by several methods", style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        
                      ],
                    ),
                  ),

                

                // Importance of Waste Management
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 19, right: 20),
                    child: Column(
                      children: [
                        Container(
                          width: 298,
                          height: 63,
                          padding: EdgeInsets.only(
                              left: 30,
                              right: 10), // Add right padding to the text
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffD2D9D1),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Importance of waste management',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    right:
                                        5), // Add right padding to the image
                                child: Image.asset(
                                    'assets/images/File Download.png'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Types of waste
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 19, right: 20),
                    child: Column(
                      children: [
                        Container(
                          width: 298,
                          height: 60,
                          padding: EdgeInsets.only(
                              left: 30,
                              right: 10), // Add right padding to the text
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffD2D9D1),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Types of waste',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Image.asset('assets/images/File Download.png'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
          ],
          ),
          ],
        ),
    );
  }
}
