import 'package:flutter/material.dart';
// import 'register_page.dart'; // Jika kamu sudah punya halaman register, import di sini

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              RichText(
                textAlign: TextAlign.center,
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
              SizedBox(height: 8),
              Text(
                'Rent Your Favorite Car',
                style: TextStyle(color: Colors.grey[700]),
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Login', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 12),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Forgot password?', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: Tambahkan aksi login di sini
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[600],
                  ),
                  child: Text('Login'),
                ),
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? "),
                  GestureDetector(
                    onTap: () {
                      // TODO: Ganti dengan halaman register jika sudah ada
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => RegisterPage()),
                      // );
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.apple, size: 32),
                  SizedBox(width: 20),
                  Icon(Icons.facebook, size: 32, color: Colors.blue),
                  SizedBox(width: 20),
                  Image.asset('assets/google_logo.png', height: 30),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
