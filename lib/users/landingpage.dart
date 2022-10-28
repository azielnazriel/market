import 'dart:html';

import 'package:flutter/material.dart';
import 'package:marketplace/constans.dart';
import 'package:marketplace/users/akunpage.dart';
import 'package:marketplace/users/beranda.dart';
import 'package:marketplace/users/favoritepage.dart';
import 'package:marketplace/users/jual.dart';
import 'package:marketplace/users/penjualan.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentTab = 0;
  final List<Widget> screens = [
    new Beranda(),
    new FavoritePage(),
    new Jual(),
    new Penjualan(),
    new AkunPage()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Beranda();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: PageStorage(
      //   child: currentScreen,
      //   bucket: bucket,
      // ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
        backgroundColor:Color.fromRGBO(166, 212, 141, 1), 
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // appBar: AppBar(
      //   title: Text('toko Tanaman'),
      // ),
      body: screens[currentTab],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: Color.fromRGBO(166, 212, 141, 1),
        backgroundColor: Color.fromRGBO(48, 122, 89, 1),
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentTab = index;
          });
        },
        currentIndex: currentTab,
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            icon: new Icon(
              Icons.home,
              color: Color.fromRGBO(166, 212, 141, 1),
            ),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            icon: new Icon(
              Icons.favorite_border,
              color: Color.fromRGBO(166, 212, 141, 1),
            ),
            label: 'Suka',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            icon: new Icon(
              Icons.add,
              color: Color.fromRGBO(166, 212, 141, 1),
            ),
            label: 'Jual',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.badge,
              color: Colors.white,
            ),
            icon: new Icon(
              Icons.badge,
              color: Color.fromRGBO(166, 212, 141, 1),
            ),
            label: 'Penjualan',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.person_outline,
              color: Colors.white,
            ),
            icon: new Icon(
              Icons.person_outline,
              color: Color.fromRGBO(166, 212, 141, 1),
            ),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
