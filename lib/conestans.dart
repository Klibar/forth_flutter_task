import 'package:flutter/material.dart';

class MyColors {
  static Color mainColor = Color(0xff53B175);
}

class GreenButton extends StatelessWidget {
  const GreenButton({super.key, required this.textButton});
  final String textButton;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.5),
      child: Container(
        width: 353,
        height: 67,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: MyColors.mainColor,
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
