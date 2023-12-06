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
        padding:const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 248,
              height: 85.56,
              margin:const EdgeInsets.only(top: 40, left: 15),
              child: Image.asset('assets/images/chemba.png'),
            ),
            const SizedBox(
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
                    padding:const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: toggleTab == 1 ?const Color(0xff528265) : null,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        width: toggleTab == 1
                            ? 0
                            : 2.0, 
                        style: BorderStyle
                            .solid, 
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
                    padding:const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: toggleTab == 2 ?const Color(0xff528265) : null,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        width: toggleTab == 2
                            ? 0
                            : 2.0, 
                        style: BorderStyle
                            .solid, 
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
                    padding:const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: toggleTab == 3 ?const Color(0xff528265) : null,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: toggleTab == 3
                            ? 0
                            : 2.0, 
                        style: BorderStyle
                            .solid, 
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
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                  ),
                  Center(child: Image.asset('assets/images/Sanitation.png')),
                  const SizedBox(
                    height: 4,
                  ),
                  const Center(
                    child: Text(
                      'Kibera Clean up 16th May 2023',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Center(child: Image.asset('assets/images/Blank 1.png')),
                  const SizedBox(
                    height: 4,
                  ),
                  const Center(
                    child: Text(
                      'Kisumu Recycling Bins installation\n                 19th May 2023',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  const SizedBox(
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
                          padding:const EdgeInsets.only(
                              left: 5,
                              right: 10), 
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:const Color(0xffD2D9D1),
                          ),
                          child: Row(
                            children: [
                              const Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 4), 
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
                                padding:const EdgeInsets.only(
                                    right: 4),
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
                          padding:const EdgeInsets.only(
                              left: 5,
                              right: 10), 
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:const Color(0xffD2D9D1),
                          ),
                          child: Row(
                            children: [
                              const Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 4),
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
                                padding:const EdgeInsets.only(
                                    right: 4), 
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
                          padding:const EdgeInsets.only(
                              left: 5,
                              right: 10), 
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:const Color(0xffD2D9D1),
                          ),
                          child: Row(
                            children: [
                              const Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 4),
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
                                padding:const EdgeInsets.only(
                                    right: 4),
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
                          padding:const EdgeInsets.only(
                              left: 5,
                              right: 10), 
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:const Color(0xffD2D9D1),
                          ),
                          child: Row(
                            children: [
                              const Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 4),
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
                                padding:const EdgeInsets.only(
                                    right: 4),
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
                          padding:const EdgeInsets.only(
                              left: 5,
                              right: 10), 
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:const Color(0xffD2D9D1),
                          ),
                          child: Row(
                            children: [
                              const Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 4),
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
                                padding:const EdgeInsets.only(
                                    right: 4),
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
                          padding:const EdgeInsets.only(
                              left: 5,
                              right: 10), 
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:const Color(0xffD2D9D1),
                          ),
                          child: Row(
                            children: [
                              const Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 4), 
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
                                padding:const EdgeInsets.only(
                                    right: 4),
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
                          padding:const EdgeInsets.only(
                              left: 5,
                              right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:const Color(0xffD2D9D1),
                          ),
                          child: Row(
                            children: [
                              const Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 4), 
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
                                padding:const EdgeInsets.only(
                                    right: 4),
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
                          padding:const EdgeInsets.only(
                              left: 5,
                              right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:const Color(0xffD2D9D1),
                          ),
                          child: Row(
                            children: [
                              const Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 4), 
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
                                padding:const EdgeInsets.only(
                                    right: 4),
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
                          padding:const EdgeInsets.only(
                              left: 5,
                              right: 10), 
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:const Color(0xffD2D9D1),
                          ),
                          child: Row(
                            children: [
                              const Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 4),
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
                                padding:const EdgeInsets.only(
                                    right: 4),
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
              
              // Educate
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
                          padding:const EdgeInsets.only(
                              left: 30),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:const Color(0xffD2D9D1),
                          ),
                          child: Row(
                            children: [
                              const Expanded(
                                child: Text(
                                  'What is waste?',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding:const EdgeInsets.only(
                                    right:
                                        10), 
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
                                padding:const EdgeInsets.only(left: 30, right: 10, top: 30),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:const Color(0xffD2D9D1),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Expanded(
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
                                          padding:const EdgeInsets.only(
                                              right:
                                                  10),
                                            child: Image.asset(
                                                'assets/images/File Download 2.png'),
                                          ),
                                        ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    const Text("This are activities that are aimed in the reduction of adverse effects of waste on human health, the environment, planetary resources and aesthetics, by several methods", style: TextStyle(
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
                          padding:const EdgeInsets.only(
                              left: 30,
                              right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:const Color(0xffD2D9D1),
                          ),
                          child: Row(
                            children: [
                              const Expanded(
                                child: Text(
                                  'Importance of waste management',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding:const EdgeInsets.only(
                                    right:
                                        5),
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
                          padding:const EdgeInsets.only(
                              left: 30,
                              right: 10), 
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:const Color(0xffD2D9D1),
                          ),
                          child: Row(
                            children: [
                              const Expanded(
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
