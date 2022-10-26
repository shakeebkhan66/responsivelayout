import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  String image = "https://images.unsplash.com/photo-1604357209793-fca5dca89f97?"
      "ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto"
      "=format&fit=crop&w=764&q=80";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
            child: Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.cancel,
                  color: Colors.black,
                  size: 30,
                )),
          ),
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.only(top: 90),
            decoration: BoxDecoration(
                // color: Colors.black,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                image: DecorationImage(image: NetworkImage(image))),
            height: MediaQuery.of(context).size.height * 0.90,
            width: MediaQuery.of(context).size.width,
          )
        ],
      ),
    );
  }
}
