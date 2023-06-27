import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 40),
                          child: Text(
                            'DAFTAR',
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
                  width: 180,
                  margin: EdgeInsets.symmetric(vertical: 40),
                  child: Image.asset('assets/images/auth/img_register.png'),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 40),
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
                                'No. Hp',
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
                                prefixIcon: Icon(Icons.phone),
                                prefixIconColor: Color(0xFFDADADA),
                                hintText: 'masukkan nomor hp',
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
                                'Alamat',
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
                                prefixIcon: Icon(Icons.home_rounded),
                                prefixIconColor: Color(0xFFDADADA),
                                hintText: 'masukkan alamat lengkap anda',
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
                        SizedBox(
                          height: 15,
                        ),
                        Column(
                          children: [
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(bottom: 5),
                              child: Text(
                                'Konfirmasi Kata Sandi',
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
                              'Saya setuju dengan syarat & ketentuan',
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF3E8FCE),
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
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
                            'Daftar',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
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
