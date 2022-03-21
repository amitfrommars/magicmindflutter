import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class calendarpage extends StatefulWidget {
  const calendarpage({Key? key}) : super(key: key);

  @override
  State<calendarpage> createState() => _State();
}

class _State extends State<calendarpage> {
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
                  "Welcome to Calendar Page!",
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
