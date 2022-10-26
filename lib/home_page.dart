import 'package:flutter/material.dart';
import 'package:responsivelayout/desktop_screen.dart';
import 'package:responsivelayout/mobile_screen.dart';
import 'package:responsivelayout/responsive_layout.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//
//     // TODO Responsive Layout Without using separate ResponsiveLayout Class
//     final currentWidth = MediaQuery.of(context).size.width;
//
//     return Scaffold(
//       backgroundColor: currentWidth <= 500 ? Colors.amber : Colors.green,
//       body: Center(
//         child: Text(currentWidth.toString()),
//       ),
//     );
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: const MobileScreen(),
        desktopBody: const DesktopScreen(),
      )
    );
  }
}

