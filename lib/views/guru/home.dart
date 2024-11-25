import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gama/widgets/in_develop_page.dart';

class GuruHomePage extends StatefulWidget {
  const GuruHomePage({super.key});

  @override
  State<GuruHomePage> createState() => _GuruHomePageState();
}

class _GuruHomePageState extends State<GuruHomePage> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> leaderboard = [
      {"nama": "ILYAS MEKKI P", "bintang": 123},
      {"nama": "MAWAR A", "bintang": 111},
      {"nama": "BENING", "bintang": 105},
      {"nama": "VIARRA", "bintang": 98},
      {"nama": "ANISA OKTA", "bintang": 92},
      {"nama": "AJI DEWA", "bintang": 87},
      {"nama": "PHILIP", "bintang": 84},
      {"nama": "ELMA Z", "bintang": 83},
      {"nama": "AIRIN K", "bintang": 79},
      {"nama": "PUTRI TASYA", "bintang": 75},
      {"nama": "RISKY", "bintang": 72},
      {"nama": "GRACIA OKT", "bintang": 68},
    ];

    leaderboard.sort((a, b) => b["bintang"].compareTo(a["bintang"]));

    // Ambil 3 data teratas
    List<Map<String, dynamic>> top3 = leaderboard.sublist(0, 3);
    List<Map<String, dynamic>> others = leaderboard.sublist(3);

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'GURU',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text('DIAN TRI ANGGRAINI, S.PD, M.SI'),
                    ],
                  )
                ],
              )),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_rounded)),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 25, right: 25, bottom: 10),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: Text(
              'Menu',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade700),
            ),
          ),
          Container(
            height: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    height: 120,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(1, 1),
                              blurRadius: 3,
                              color: Colors.grey.withOpacity(.2),
                              spreadRadius: 3)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/banner1.png',
                          height: 70,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Penilaian',
                          style: const TextStyle(fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
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
                    height: 120,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(1, 1),
                              blurRadius: 3,
                              color: Colors.grey.withOpacity(.2),
                              spreadRadius: 3)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/reward.png',
                          height: 70,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Reward',
                          style: const TextStyle(fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
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
                    height: 120,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(1, 1),
                              blurRadius: 3,
                              color: Colors.grey.withOpacity(.2),
                              spreadRadius: 3)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/menu.png',
                          height: 70,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Menu lain',
                          style: const TextStyle(fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: Text(
              'Leaderboard',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade700),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(1, 1),
                      blurRadius: 3,
                      color: Colors.grey.withOpacity(.2),
                      spreadRadius: 3)
                ]),
            child: Column(
              children: [
                Column(
                    children: List.generate(
                  top3.length,
                  (index) {
                    final data = top3[index];
                    return ListTile(
                      leading: CircleAvatar(
                        // backgroundColor: Colors.amber.,
                        child: Text('${index + 1}'),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(child: Text(data["nama"].toString())),
                          Container(
                            width: 55,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text(data["bintang"].toString()),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                )),
                Column(
                    children: List.generate(
                  others.length,
                  (index) {
                    final data = others[index];
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey.shade300,
                        child: Text('${index + 4}'),
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(child: Text(data["nama"].toString())),
                          Container(
                            width: 55,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text(data["bintang"].toString()),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
