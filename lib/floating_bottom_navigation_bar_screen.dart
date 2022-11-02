import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsivelayout/desktop_screen.dart';
import 'package:responsivelayout/home_page.dart';
import 'package:responsivelayout/mobile_screen.dart';
import 'package:responsivelayout/my_home.dart';
import 'package:responsivelayout/screen1.dart';



// TODO Package Used For this Is:
// floating_bottom_navigation_bar: ^1.5.2


class FloatingBottomNavigationBarScreen extends StatefulWidget {
  const FloatingBottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<FloatingBottomNavigationBarScreen> createState() => _FloatingBottomNavigationBarScreenState();
}

class _FloatingBottomNavigationBarScreenState extends State<FloatingBottomNavigationBarScreen> {

  int currentIndex = 0;
  List pages = [
    const MyHome(),
    const Screen1(),
    const MyHome(),
    const Screen1(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: pages[currentIndex],
      bottomNavigationBar: FloatingNavbar(
        borderRadius: 30,
        itemBorderRadius: 20,
        onTap: (int val) {
          setState(() {
            currentIndex = val;
          });
        },
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
          FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'Chats'),
          FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
        ], currentIndex: currentIndex,
      ),
    );
  }
}
