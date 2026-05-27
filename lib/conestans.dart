import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyColors {
  static Color mainColor = Color(0xff53B175);
  static Color iconColor = Color(0xffF3603F);
}

class GreenButton extends StatelessWidget {
  const GreenButton({
    super.key,
    required this.textButton,
    required this.onPressed,
  });
  final String textButton;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 67),
        backgroundColor: MyColors.mainColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
      ),
      child: Text(
        textButton,
        style: TextStyle(
          color: Color(0xffFFF9FF),
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
    );
  }
}

class ProfileCategory extends StatelessWidget {
  const ProfileCategory({
    super.key,
    required this.profileIcon,
    required this.tilte,
  });
  final IconData profileIcon;
  final String tilte;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 4),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Icon(profileIcon, size: 30),
                  SizedBox(width: 20),
                  Text(
                    tilte,
                    style: GoogleFonts.plusJakartaSans(
                      color: Color(0xff181725),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(children: [Icon(Icons.arrow_forward_ios)]),
        ],
      ),
    );
  }
}
