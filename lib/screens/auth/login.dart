import 'package:flutter/material.dart';
import 'package:forth_flutter_task/conestans.dart';
import 'package:forth_flutter_task/screens/auth/signUp.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passFiledCheck = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(height: 65),
                Row(
                  mainAxisAlignment: .center,
                  children: [Image.asset('assets/Group.png')],
                ),
                SizedBox(height: 80),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          'Loging',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff181725),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Enter your emails and password',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff7C7C7C),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Align(
                  alignment: .centerStart,
                  child: Text(
                    'Email',
                    style: GoogleFonts.plusJakartaSans(
                      color: Color(0xff7C7C7C),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hint: Text('example@gmail.com'),
                    prefixIcon: Icon(Icons.email),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE2E2E2)),
                    ),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 15),
                Align(
                  alignment: .centerStart,
                  child: Text(
                    'Password',
                    style: GoogleFonts.plusJakartaSans(
                      color: Color(0xff7C7C7C),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                TextFormField(
                  controller: passController,
                  obscureText: passFiledCheck,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.key),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passFiledCheck = !passFiledCheck;
                        });
                      },
                      icon: passFiledCheck
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE2E2E2)),
                    ),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your password';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 15),
                Align(alignment: .centerRight, child: Text('Forgot Password?')),
                SizedBox(height: 20),
                GreenButton(
                  textButton: "Log In",
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(),)),
                    }
                  },
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    Text(
                      'Don’t have an account?',
                      style: GoogleFonts.plusJakartaSans(
                        color: Color(0xff181725),
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signup()),
                        );
                      },
                      child: Text(
                        ' Singup',
                        style: GoogleFonts.plusJakartaSans(
                          color: MyColors.mainColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
