import 'package:flutter/material.dart';

class InDevelopPage extends StatelessWidget {
  const InDevelopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/in-develop.png'),
            SizedBox(
              height: 20,
            ),
            Text('Masih dalam tahap pengembangan')
          ],
        ),
      ),
    );
  }
}
