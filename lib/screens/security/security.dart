import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Security extends StatelessWidget {
  const Security({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 122,
          margin:const EdgeInsets.only(top: 41, left: 15),
          padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset('assets/images/chemba.png', height: 40),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  'Security & Privacy',
                  style:GoogleFonts.manrope(
                textStyle:const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff528265),
                  ),),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 19, right: 20),
          child: Container(
            width: 298,
            height: 63,
            padding:const EdgeInsets.only(left: 30, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:const Color(0xffD2D9D1),
            ),
            child: Row(
              children: [
                Padding(
                  padding:const EdgeInsets.only(right: 15),
                  child: Image.asset('assets/images/User.png'),
                ),
                Expanded(
                  child: Text(
                    'Privacy Policy',
                    style:GoogleFonts.manrope(
                textStyle:const TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 19, right: 20),
          child: Container(
            width: 298,
            height: 63,
            padding:const EdgeInsets.only(left: 30, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:const Color(0xffD2D9D1),
            ),
            child: Row(
              children: [
                Padding(
                  padding:const EdgeInsets.only(right: 15),
                  child: Image.asset('assets/images/Terms.png'),
                ),
                Expanded(
                  child: Text(
                    'Terms of Service',
                    style:GoogleFonts.manrope(
                textStyle:const TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 19, right: 20),
          child: Container(
            width: 298,
            height: 63,
            padding:const EdgeInsets.only(left: 30, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:const Color(0xffD2D9D1),
            ),
            child: Row(
              children: [
                Padding(
                  padding:const EdgeInsets.only(right: 25),
                  child: Image.asset('assets/images/Device.png'),
                ),
                Expanded(
                  child: Text(
                    'Devices',
                    style:GoogleFonts.manrope(
                textStyle:const TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
