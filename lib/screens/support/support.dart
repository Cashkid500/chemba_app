import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Support extends StatelessWidget {
  const Support({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 645, // Adjusted the height to accommodate the content
      margin:const EdgeInsets.only(top: 41, left: 15),
      padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset('assets/images/chemba.png', height: 40),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Help & Support',
                  style: GoogleFonts.manrope(
                    textStyle:const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff528265),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 50,
            width: 314,
            padding:const EdgeInsets.only(
              left: 15,
              top: 10,
            ),
            child: Text(
              "We’re always here to answer any of your questions, and support of any kind.",
              style: GoogleFonts.manrope(
                textStyle:const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 19, right: 20),
            child: Container(
              width: 288,
              height: 60,
              padding:const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:const Color(0xffD2D9D1),
              ),
              child: Row(
                children: [
                  Padding(
                    padding:const EdgeInsets.only(right: 15),
                    child: Image.asset('assets/images/Chat.png'),
                  ),
                  const Expanded(
                    child: Text(
                      'Chat with Customer Support',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 19, right: 20),
            child: Container(
              width: 288,
              height: 60,
              padding:const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:const Color(0xffD2D9D1),
              ),
              child: Row(
                children: [
                  Padding(
                    padding:const EdgeInsets.only(right: 15),
                    child: Image.asset('assets/images/Mail.png'),
                  ),
                  Expanded(
                    child: Text(
                      'Send us an E-mail',
                      style: GoogleFonts.manrope(
                        textStyle:const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:const EdgeInsets.only(top: 100.0, bottom: 20.0),
            child: Center(
              child: Text(
                "Connect with us on:",
                style: GoogleFonts.manrope(
                  textStyle:const TextStyle(
                    color: Color(0xff528265),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 2,
            ),
            child: Center(
              child: SizedBox(
                width: 288,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        width: 50,
                        child: Image.asset('assets/images/Facebook.png')
                    ),
                    SizedBox(
                        width: 50,
                        child: Image.asset('assets/images/Twitter.png')
                    ),
                    SizedBox(
                        width: 50,
                        child: Image.asset('assets/images/Linkedin.png')
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: SizedBox(
              width: 288,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: 50,
                      child: Image.asset('assets/images/Instagram.png')),
                  SizedBox(
                      width: 50,
                      child: Image.asset('assets/images/YouTube.png')),
                  const SizedBox(
                    width: 50,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
