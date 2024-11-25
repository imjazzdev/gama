import 'package:flutter/material.dart';
import 'package:gama/views/siswa/menu.dart';
import 'package:gama/widgets/in_develop_page.dart';

class GridMenu extends StatelessWidget {
  const GridMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Daftar menu dengan ikon dan label
    final List<Map<String, dynamic>> menuItems = [
      {"icon": 'penjumlahan', "label": "Penjumlahan"},
      {"icon": 'pengurangan', "label": "Pengurangan"},
      {"icon": 'perkalian', "label": "Perkalian"},
      {"icon": 'pembagian', "label": "Pembagian"},
      {"icon": 'akar', "label": "Akar"},
      {"icon": 'kuadrat', "label": "Perpangkatan"},
      {"icon": 'bangun-datar', "label": "Bangun Datar"},
      {"icon": 'bilangan-cacah', "label": "Bilangan cacah"},
      {"icon": 'kpk-fpb', "label": "KPK dan FPB"},
    ];

    return Padding(
      padding: const EdgeInsets.all(0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Jumlah kolom
          crossAxisSpacing: 10.0, // Jarak horizontal antar item
          mainAxisSpacing: 10.0, // Jarak vertikal antar item
        ),
        itemCount: menuItems.length, // Jumlah item
        itemBuilder: (context, index) {
          final item = menuItems[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MenuSiswa(),
                  ));
            },
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/${item['icon']}.png'),
                  const SizedBox(height: 8),
                  Text(
                    item['label'],
                    style: const TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
