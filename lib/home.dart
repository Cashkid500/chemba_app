import 'package:chemba_app/screens/registration/reg.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 50, left: 62),
              child: SizedBox(
                width: 248,
                height: 85.56,
                child: Image.asset('assets/images/chemba.png'),
              ),
            ),

            // Username TextFormField
            Padding(
              padding: EdgeInsets.only(top: 20, left: 67),
              child: SizedBox(
                width: 239,
                height: 63,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'User Name',
                    labelStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    fillColor: Color(0xffD2D9D1),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Email TextFormField
            Padding(
              padding: EdgeInsets.only(top: 20, left: 67),
              child: SizedBox(
                width: 239,
                height: 63,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    fillColor: Color(0xffD2D9D1),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Password TextFormField
            Padding(
              padding: EdgeInsets.only(top: 20, left: 67),
              child: SizedBox(
                width: 239,
                height: 63,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    fillColor: Color(0xffD2D9D1),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Text Area
            Padding(
              padding: EdgeInsets.only(top: 20, left: 67),
              child: SizedBox(
                width: 239,
                height: 150,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: 'Basic User\n\nGarbage Collector\n\nScrap Dealer',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    fillColor: Color(0xffD2D9D1),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Sign Up Button
            Padding(
              padding: EdgeInsets.only(top: 20, left: 67),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>const RegistrationScreen()),
                  );
                },
                child: Container(
                  width: 239,
                  height: 63,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xff528265),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child:const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 12),
              child:const Center(
                child:const Text(
                  "Already have an account?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff808080),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 12),
              child:const Center(
                child:const Text(
                  "Sign in",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}