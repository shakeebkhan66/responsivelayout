import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  String image = "https://a.ccdn.es/cnet/contents/media/own/2022/6/1299003.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
              child: Align(
                alignment: Alignment.topRight,
                  child: Icon(Icons.cancel, color: Colors.black, size: 30,)),
            ),
            const SizedBox(height: 131),
            Container(
              padding: const EdgeInsets.only(top: 90),
              decoration: BoxDecoration(
                  // color: Colors.black,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                image: DecorationImage(image: NetworkImage(image), fit: BoxFit.fill)
              ),
              height: MediaQuery.of(context).size.height * 0.60,
              width: MediaQuery.of(context).size.width,
            )
          ],
        ),
      )
    );
  }
}
