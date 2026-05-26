import 'package:flutter/material.dart';

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
