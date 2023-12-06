import 'package:chemba_app/screens/profile/profile.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding:const EdgeInsets.only(top: 100, left: 62),
            child: SizedBox(
              width: 248,
              height: 85.56,
              child: Image.asset('assets/images/chemba.png'),
            ),
          ),

          // Email TextFormField
          Padding(
            padding:const EdgeInsets.only(top: 50, left: 67),
            child: SizedBox(
              width: 239,
              height: 63,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle:const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  fillColor:const Color(0xffD2D9D1),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide:const BorderSide(
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
            padding:const EdgeInsets.only(top: 20, left: 67),
            child: SizedBox(
              width: 239,
              height: 63,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle:const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  fillColor:const Color(0xffD2D9D1),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide:const BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.only(left: 195),
            child: Text(
              "Forgot Password?",
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Sign Up Button
          Padding(
            padding:const EdgeInsets.only(top: 20, left: 67),
            child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfileScreen()),
                  );
                },
            child: Container(
              width: 239,
              height: 63,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color:const Color(0xff528265),
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
            child: Center(
              child: Text(
                "Don't have an account yet?",
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
            child: Center(
              child: Text(
                "Register Now",
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
    );
  }
}
