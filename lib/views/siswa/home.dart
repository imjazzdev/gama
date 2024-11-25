import 'package:flutter/material.dart';
import 'package:gama/views/siswa/menu.dart';
import 'package:gama/views/siswa/menu_metode.dart';
import 'package:gama/widgets/carousel_banner.dart';
import 'package:gama/widgets/grid_menu.dart';
import 'package:gama/widgets/in_develop_page.dart';

class SiswaHomePage extends StatelessWidget {
  const SiswaHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Container(
          height: 100,
          padding:
              const EdgeInsets.only(top: 40, left: 15, right: 15, bottom: 15),
          decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: const Offset(1, 1),
                    blurRadius: 3,
                    color: Colors.grey.withOpacity(.3),
                    spreadRadius: 3)
              ]),
          child: Row(
            children: [
              Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/person.png',
                        height: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ILHAM MEKKI P',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 12),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/star.png',
                                height: 15,
                              ),
                              Text('30'),
                              SizedBox(
                                width: 5,
                              ),
                              Image.asset(
                                'assets/gems.png',
                                height: 15,
                              ),
                              Text('30'),
                            ],
                          )
                        ],
                      )
                    ],
                  )),
              const VerticalDivider(
                thickness: 1,
              ),
              Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'assets/blackboard.png',
                            height: 50,
                          ),
                          Positioned(
                              bottom: 16,
                              child: Text(
                                '3',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text('LEVEL'),
                          Flexible(
                            child: Stack(
                              children: [
                                Container(
                                  width: 120,
                                  height: 5,
                                  color: Colors.grey.shade200,
                                  child: const SizedBox(),
                                ),
                                Container(
                                  width: 70,
                                  height: 5,
                                  color: Colors.amber,
                                  child: const SizedBox(),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(
          left: 25,
          right: 25,
        ),
        height: double.maxFinite,
        width: double.maxFinite,
        child: ListView(
          children: [
            CarouselBanner(),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Text(
                'Mata pelajaran',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade700),
              ),
            ),
            GridMenu(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MenuMetodeSiswa(),
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
                  'Metode Pembelajaran',
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
