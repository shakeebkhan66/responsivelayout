import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
              child: Align(
                alignment: Alignment.topRight,
                  child: Icon(Icons.cancel, color: Colors.black, size: 30,)),
            ),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.only(top: 90),
              decoration: const BoxDecoration(
                  color: Colors.black,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))
              ),
              height: MediaQuery.of(context).size.height * 0.90,
              width: MediaQuery.of(context).size.width,
            )
          ],
        ),
      )
    );
  }
}
