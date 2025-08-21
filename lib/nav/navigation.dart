import 'package:flutter/material.dart';
import 'package:rukibank/pages/home.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    // TransferPage(),
    // ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],

      // ✅ bagian BottomNavigationBar dengan background & garis putih
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.grey, // background navbar
          border: Border(
            top: BorderSide(
              color: Colors.white, // garis atas
              width: 1.5,
            ),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white, // sinkron dengan container
          selectedItemColor: Colors.deepPurpleAccent,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: "Beranda",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.send_outlined),
              activeIcon: Icon(Icons.send),
              label: "Transaksi",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person),
              label: "Profil",
            ),
          ],
        ),
      ),
    );
  }
}
