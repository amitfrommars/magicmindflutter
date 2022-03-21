import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:magicmind/screens/homescreen.dart';
import 'package:magicmind/screens/tellaboutyou.dart';

class welcomepage extends StatefulWidget {
  const welcomepage({Key? key}) : super(key: key);

  @override
  State<welcomepage> createState() => _State();
}

class _State extends State<welcomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/chakra2.jpg"),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 650, 20, 10),
            child: SizedBox(
              width: double.maxFinite,
              height: 65,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const tellaboutyou()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(25.0))),
                icon: Icon(Icons.double_arrow_rounded),
                label: Text("Get Started", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
