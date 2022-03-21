import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class chartspage extends StatefulWidget {
  const chartspage({Key? key}) : super(key: key);

  @override
  State<chartspage> createState() => _State();
}

class _State extends State<chartspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 230),
            child: Center(
                child: Icon(
                  Icons.sentiment_satisfied_rounded,
                  color: Colors.white,
                  size: 100,
                )),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 400),
            child: Center(
                child: Text(
                  "Welcome to Charts Page!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ],
      ),
    );
  }
}
