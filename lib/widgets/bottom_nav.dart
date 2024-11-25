import 'package:flutter/material.dart';
import 'package:gama/utils/const.dart';
import 'package:gama/views/guru/home.dart';
import 'package:gama/views/siswa/home.dart';
import 'package:gama/views/siswa/pengaturan.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0; // Untuk melacak tab yang aktif

  // List halaman yang akan ditampilkan
  final List<Widget> _pages_siswa = [
    const SiswaHomePage(), // Halaman Home
    const PengaturanPage(), // Halaman Settings
  ];

  final List<Widget> _pages_guru = [
    const GuruHomePage(), // Halaman Home
    const PengaturanPage(), // Halaman Settings
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Constants.isGuru
          ? _pages_guru[_currentIndex]
          : _pages_siswa[_currentIndex], // Menampilkan halaman sesuai index
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Tab aktif saat ini
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Mengubah tab aktif
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Pengaturan',
          ),
        ],
      ),
    );
  }
}
