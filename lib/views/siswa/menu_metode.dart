import 'package:flutter/material.dart';

import '../../widgets/in_develop_page.dart';

class MenuMetodeSiswa extends StatelessWidget {
  const MenuMetodeSiswa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(25),
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InDevelopPage(),
                    ));
              },
              child: Container(
                margin: EdgeInsets.only(top: 20, right: 30, left: 30),
                alignment: Alignment.center,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.blue.shade200, Colors.blue])),
                child: Text(
                  'Audiotori',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InDevelopPage(),
                    ));
              },
              child: Container(
                margin: EdgeInsets.only(top: 30, right: 30, left: 30),
                alignment: Alignment.center,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.blue.shade200, Colors.blue])),
                child: Text(
                  'Visual',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InDevelopPage(),
                    ));
              },
              child: Container(
                margin: EdgeInsets.only(top: 30, right: 30, left: 30),
                alignment: Alignment.center,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.blue.shade200, Colors.blue])),
                child: Text(
                  'Kinestetik',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
