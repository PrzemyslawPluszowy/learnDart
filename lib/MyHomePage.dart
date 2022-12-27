import 'package:clean_air/AirScreen.dart';

import 'package:flutter/material.dart';

import 'WeatherScreen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currIndex = 0;
  final screens = [
    const AirScreen(),
    const WeatherScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    _onItemTaped(int index) {
      setState(() {
        _currIndex = index;
      });
    }

    return Scaffold(
      body: IndexedStack(
        index: _currIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 35.0,
        currentIndex: _currIndex,
        onTap: _onItemTaped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.masks_outlined), label: 'Powietrze'),
          BottomNavigationBarItem(
              icon: Icon(Icons.wb_cloudy_outlined), label: 'Pogoda'),
        ],
      ),
    );
  }
}
