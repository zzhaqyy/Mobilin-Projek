import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Bagian atas biru setengah lingkaran
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                color: Color(0xFF2D87B0), // Biru sesuai gambar
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                  bottomRight: Radius.circular(200),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 30,
                    left: 30,
                    child: Icon(Icons.more_horiz, color: Colors.white54),
                  ),
                  Positioned(
                    top: 30,
                    right: 30,
                    child: Icon(Icons.more_horiz, color: Colors.white54),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Logo Mobilin
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: Offset(1, 1),
                      blurRadius: 2,
                    )
                  ],
                ),
                children: [
                  TextSpan(
                    text: 'Mob',
                    style: TextStyle(color: Colors.black),
                  ),
                  WidgetSpan(
                    child: Icon(Icons.circle, color: Colors.lightBlue, size: 18),
                    alignment: PlaceholderAlignment.middle,
                  ),
                  TextSpan(
                    text: 'ilin',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            Text(
              'Welcome',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                children: [
                  Text(
                    'Selamat datang di aplikasi Mobilin',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Solusi mudah dan cepat untuk rental mobil.\nNikmati perjalanan tanpa ribet, mulai sekarang!',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Navigasi ke halaman Create Account
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2D87B0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Create Account',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? "),
                GestureDetector(
                  onTap: () {
                    // TODO: Navigasi ke halaman login
                  },
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
