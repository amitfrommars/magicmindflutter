import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:magicmind/screens/homescreen.dart';

class hru extends StatefulWidget {
  const hru({Key? key}) : super(key: key);

  @override
  State<hru> createState() => _State();
}

class _State extends State<hru> {
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
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 50, 0, 0),
            child: Container(
              child: IconButton(
                onPressed: () {Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => const homescreen()),
                );},
                icon: Icon(Icons.close_rounded),
                color: Colors.grey,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 300),
            child: Center(
                child: Text(
              "How are you feeling?",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            )),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Center(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.sentiment_very_satisfied_rounded),
                      color: Colors.green,
                      iconSize: 51,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.sentiment_satisfied_rounded),
                      color: Colors.lightGreen,
                      iconSize: 51,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.sentiment_neutral_rounded),
                      color: Colors.yellow,
                      iconSize: 51,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.sentiment_dissatisfied_rounded),
                      color: Colors.orange,
                      iconSize: 51,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.sentiment_very_dissatisfied_rounded),
                      color: Colors.red,
                      iconSize: 51,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.edit),
        label: const Text("Edit Moods"),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
