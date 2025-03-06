import 'package:flutter/material.dart';
import 'register_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/flutter_logo.png',
              width: 150,
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to FLUTTER',
              style:
                  GoogleFonts.kanit(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'DESIGN YOUR LIFE',
              style: GoogleFonts.kanit(fontSize: 16),
            ),
            Text(
              'DESIGN YOUR FUTURE',
              style: GoogleFonts.kanit(fontSize: 16),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(
                left: 13,
                right: 13,
              ),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.lightBlue,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.lightBlue,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.person_2_outlined,
                    color: Colors.lightBlue,
                  ),
                  hintText: 'ป้อนรหัสนักศึกษา',
                  hintStyle: TextStyle(
                    color: Colors.grey[600],
                  ),
                  isCollapsed: true,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 15.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 13, right: 13),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.lightBlue,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.lightBlue,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: Colors.lightBlue,
                  ),
                  hintText: 'ป้อนรหัสผ่าน',
                  hintStyle: TextStyle(
                    color: Colors.grey[600],
                  ),
                  suffixIcon: Icon(Icons.visibility),
                  isCollapsed: true,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 15.0,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text('Forgot Password?'),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 55, right: 55),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('LOG IN',
                    style: GoogleFonts.kanit(
                        fontSize: 18, fontWeight: FontWeight.bold)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('Or login with'),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.facebookF, color: Colors.white),
                  label: Text('Facebook',
                      style: TextStyle(fontSize: 16, color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    minimumSize: Size(150, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.google, color: Colors.white),
                  label: Text('Google',
                      style: TextStyle(fontSize: 16, color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    minimumSize: Size(150, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                SizedBox(width: 4),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterUi(),
                      ),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            Text('Created by 6519410008'),
          ],
        ),
      ),
    );
  }
}
