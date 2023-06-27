import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:properti_ideal/src/view/homepage/homepage_view.dart';
import 'package:properti_ideal/src/view/homepage/navbar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // visibility password
  bool _isHidePassword = true;

  void togglePassword() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  // checkbox
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF127DF3),
                  Color(0xFF0252AC),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 40),
                          child: Text(
                            'MASUK',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 220,
                  margin: EdgeInsets.symmetric(vertical: 40),
                  child: Image.asset('assets/images/auth/img_login.png'),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 90),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.2),
                        blurRadius: 10,
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Form(
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(bottom: 5),
                              child: Text(
                                'Username',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF173C74),
                                ),
                              ),
                            ),
                            TextFormField(
                              // controller: _emailController,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person),
                                prefixIconColor: Color(0xFFDADADA),
                                hintText: 'masukkan username',
                                hintStyle: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFFDADADA),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 5),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Color(0xFFDADADA),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Color(0xFFDADADA), width: 1),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Colors.red, width: 1),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Colors.red, width: 1),
                                ),
                              ),
                              style: const TextStyle(fontSize: 16),
                              validator: (value) {},
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Column(
                          children: [
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(bottom: 5),
                              child: Text(
                                'Kata Sandi',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF173C74),
                                ),
                              ),
                            ),
                            TextFormField(
                              // controller: _emailController,
                              obscureText: _isHidePassword,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                prefixIconColor: Color(0xFFDADADA),
                                hintText: 'masukkan kata sandi',
                                hintStyle: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFFDADADA),
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _isHidePassword
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: _isHidePassword
                                        ? Color(0xFFDADADA)
                                        : Color(0xFFF0252AC),
                                  ),
                                  onPressed: togglePassword,
                                ),
                                suffixIconColor: Color(0xFFDADADA),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 5),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Color(0xFFDADADA),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Color(0xFFDADADA), width: 1),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Colors.red, width: 1),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      BorderSide(color: Colors.red, width: 1),
                                ),
                              ),
                              style: const TextStyle(fontSize: 16),
                              validator: (value) {},
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: _isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _isChecked = value!;
                                    });
                                  },
                                ),
                                Text(
                                  'Biarkan tetap masuk',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF3E8FCE),
                                  ),
                                ),
                              ],
                            ),
                            TextButton(
                              child: Text(
                                'Lupa sandi?',
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFDE5753),
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NavbarWidget(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size.fromHeight(10),
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Color(0xFFF0252AC),
                          ),
                          child: Text(
                            'Masuk',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterScreen()));
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size.fromHeight(10),
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Color(0xFFB4B4B4),
                          ),
                          child: Text(
                            'Daftar',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Color(0xFFDADADA),
                                thickness: 1.0,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                'atau',
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFFDADADA),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: Color(0xFFDADADA),
                                thickness: 1.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  // minimumSize: const Size.fromHeight(10),
                                  // padding: const EdgeInsets.symmetric(
                                  //     vertical: 10),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  backgroundColor: Color.fromARGB(0, 0, 0, 0),
                                  side: BorderSide(
                                    color: Color(0xFFDADADA),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                        'assets/images/auth/icon_google.png'),
                                    SizedBox(width: 10),
                                    Text(
                                      'Masuk dengan google',
                                      style: GoogleFonts.poppins(
                                          fontSize: 7,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xFF878787)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  // minimumSize: const Size.fromHeight(10),
                                  // padding: const EdgeInsets.symmetric(
                                  //     vertical: 10),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  backgroundColor: Color.fromARGB(0, 0, 0, 0),
                                  side: BorderSide(
                                    color: Color(0xFFDADADA),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                        'assets/images/auth/icon_facebook.png'),
                                    SizedBox(width: 10),
                                    Text(
                                      'Masuk dengan facebook',
                                      style: GoogleFonts.poppins(
                                          fontSize: 7,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xFF878787)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
