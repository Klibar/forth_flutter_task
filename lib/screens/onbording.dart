import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:forth_flutter_task/conestans.dart';
import 'package:google_fonts/google_fonts.dart';

class Onbording extends StatelessWidget {
  const Onbording({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/8140.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: .center,
            children: [
              SizedBox(height: 300),
              Column(
                children: [
                  SvgPicture.asset('assets/Group.svg'),
                  Container(
                    width: 255,
                    child: Text(
                      '''Welcome to our store''',
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 48,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      textAlign: .center,
                    ),
                  ),
                  SizedBox(height: 9),
                  Text(
                    'Ger your groceries in as fast as one hour',
                    style: GoogleFonts.plusJakartaSans(
                      color: Color(0xA1FCFCFC),
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 30),
                  InkWell(child: GreenButton(textButton: 'Get Started')),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
