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
  final onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.5),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(353, 67),
          backgroundColor: MyColors.mainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19),
          ),
        ),
        child: Align(
          alignment: .center,
          child: Text(
            textButton,
            style: TextStyle(
              color: Color(0xffFFF9FF),
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
