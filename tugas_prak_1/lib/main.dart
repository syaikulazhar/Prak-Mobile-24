import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login Page',
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(15),
            ),
            // Menampilkan input untuk email
            Container(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  hintText: 'Email',
                  fillColor: Colors.white70,
                ),
              ),
            ),
            // Menampilkan input untuk password
            Container(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  hintText: 'Password',
                  fillColor: Colors.white70,
                ),
              ),
            ),
            // Menampilkan tombol untuk login
            Container(
              padding: EdgeInsets.fromLTRB(20, 25, 20, 0),
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Ganti warna latar belakang tombol menjadi biru
                  minimumSize: Size(double.infinity, 50), // Panjangkan tombol
                ),
                child: Text("Log in", style: TextStyle(fontSize: 20)),
              ),
            ),
            // Menampilkan teks 'Forgot Password?'
            Container(
              padding: EdgeInsets.all(5),
              child: Center(
                child: Text('Forgot Password?'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFA3A3B0)),
      home: LoginScreen(),
    );
  }
}
