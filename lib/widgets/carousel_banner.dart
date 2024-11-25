import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselBanner extends StatelessWidget {
  const CarouselBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 15),
        height: 150,
        // height: MediaQuery.of(context).size.height * 0.28,
        child: CarouselSlider(
          options: CarouselOptions(
              autoPlay: false,
              autoPlayAnimationDuration: Duration(seconds: 2),
              disableCenter: false,
              pauseAutoPlayInFiniteScroll: true,
              viewportFraction: 1,
              enlargeCenterPage: true),
          items: [
            Container(
              // margin: EdgeInsets.only(left: 20, right: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue.shade100, Colors.blue.shade200]),
              ),
              padding: EdgeInsets.only(right: 10, left: 10),
              child: Row(
                children: [
                  Image.asset(
                    'assets/banner1.png',
                    height: 100,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Belajar itu petualangan seru, \nayo nikmati setiap harinya!',
                    style: TextStyle(fontSize: 14),
                    // maxLines: 3,
                  ),
                ],
              ),
            ),
            Container(
              // margin: EdgeInsets.only(left: 20, right: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue.shade100, Colors.blue.shade200]),
              ),
              padding: EdgeInsets.only(right: 10, left: 10),
              child: Row(
                children: [
                  Image.asset(
                    'assets/banner2.png',
                    height: 100,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Coba terus, dari kesalahan \nkamu jadi hebat!'),
                ],
              ),
            ),
            Container(
              // margin: EdgeInsets.only(left: 20, right: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue.shade100, Colors.blue.shade200]),
              ),
              padding: EdgeInsets.only(right: 10, left: 10),
              child: Row(
                children: [
                  Image.asset(
                    'assets/banner3.png',
                    height: 100,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Belajar sekarang, \nsukses di masa depan!'),
                ],
              ),
            ),
          ],
        ));
  }
}
