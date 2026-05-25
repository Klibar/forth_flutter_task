import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:forth_flutter_task/conestans.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  bool _checkPass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 85),
              child: Row(
                mainAxisAlignment: .center,
                children: [
                  SvgPicture.asset(
                    'assets/Group.svg',
                    color: MyColors.iconColor,
                  ),
                ],
              ),
            ),
            SizedBox(height: 100),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Loging',
                      style: GoogleFonts.plusJakartaSans(
                        color: Color(0xff181725),
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text('Enter your emails and password'),
                  ],
                ),
              ],
            ),
            // Form(
            //   key: _formKey,
            //   child: Row(
            //     children: [
            //       Column(
            //         children: [
            //           Text('Email'),
            //           TextFormField(controller: _emailController),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
