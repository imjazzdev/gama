import 'package:flutter/material.dart';
import 'package:gama/views/siginin.dart';

class PengaturanPage extends StatelessWidget {
  const PengaturanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const SigninPage()),
                (Route<dynamic> route) => false,
              );
            },
            child: Text(
              'Logout',
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
      ),
    );
  }
}
