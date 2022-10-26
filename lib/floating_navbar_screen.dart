import 'package:floating_navbar/floating_navbar.dart';
import 'package:floating_navbar/floating_navbar_item.dart';
import 'package:flutter/material.dart';
import 'package:responsivelayout/mobile_screen.dart';


// TODO Floating NavBar Screen
// Package Used is   floating_navbar: ^2.0.2

class FloatingNavbarScreen extends StatefulWidget {
  const FloatingNavbarScreen({Key? key}) : super(key: key);

  @override
  State<FloatingNavbarScreen> createState() => _FloatingNavbarScreenState();
}

class _FloatingNavbarScreenState extends State<FloatingNavbarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FloatingNavBar(
        resizeToAvoidBottomInset: false,
        color: Colors.green,
        selectedIconColor: Colors.white,
        unselectedIconColor: Colors.white.withOpacity(0.6),
        items: [
          FloatingNavBarItem(iconData: Icons.home_outlined, page: MobileScreen(), title: 'Home'),
          FloatingNavBarItem(iconData: Icons.local_hospital_outlined, page: MobileScreen(), title: 'Doctors'),
          FloatingNavBarItem(iconData: Icons.alarm, page: MobileScreen(), title: 'Reminders'),
          FloatingNavBarItem(iconData: Icons.pending_actions_outlined, page: MobileScreen(), title: 'Records'),
        ],
        horizontalPadding: 10.0,
        hapticFeedback: true,
        showTitle: true,
      ),
    );
  }
}
