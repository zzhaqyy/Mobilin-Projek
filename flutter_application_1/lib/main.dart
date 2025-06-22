import 'package:flutter/material.dart';
import 'screens/welcome_page.dart'; // pastikan nama file sudah benar

void main() {
  runApp(MobilinApp());
}

class MobilinApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobilin',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

// Ganti jadi StatefulWidget agar bisa pakai initState()
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigasi otomatis ke WelcomePage setelah 3 detik
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => WelcomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2D87B0), // Warna biru background
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(),
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
                      text: 'M',
                      style: TextStyle(color: Colors.white),
                    ),
                    WidgetSpan(
                      child: Icon(Icons.circle, color: Colors.lightBlueAccent, size: 50),
                      alignment: PlaceholderAlignment.middle,
                    ),
                    TextSpan(
                      text: 'bilin',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Rent Your Favorite Car',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: 'Arial',
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 200,
                height: 5,
                child: LinearProgressIndicator(
                  backgroundColor: Colors.white,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
