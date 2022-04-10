import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:magicmind/screens/expandableactivitypage.dart';
import 'package:magicmind/screens/homescreen.dart';
import 'package:magicmind/screens/selectactivitiespage.dart';

class hru extends StatefulWidget {
  const hru({Key? key}) : super(key: key);

  @override
  State<hru> createState() => _State();
}

class _State extends State<hru> {
  bool _tapgreat = false;
  bool _tapgood = false;
  bool _tapokay = false;
  bool _tapbad = false;
  bool _tapshit = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 50, 0, 0),
              child: Container(
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => hru()),
                    );
                  },
                  icon: Icon(Icons.close_rounded),
                  color: Colors.grey,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 300),
              child: Center(
                  child: Text(
                "How are you doing?",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 325, 10, 0),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTapDown: (TapDownDetails details) {
                            setState(() {
                              _tapgreat = true;
                              _tapgood = false;
                              _tapokay = false;
                              _tapbad = false;
                              _tapshit = false;
                            });
                          },
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const selectactivitiespage()),
                            );
                          },
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 27,
                                backgroundColor:
                                    _tapgreat ? Colors.white : Colors.green,
                                child: Icon(
                                  Icons.sentiment_very_satisfied_rounded,
                                  size: 54,
                                  color: _tapgreat ? Colors.green : Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text(
                                  "Great",
                                  style: TextStyle(
                                      color:
                                          _tapgreat ? Colors.white : Colors.green,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTapDown: (TapDownDetails details) {
                            setState(() {
                              _tapgreat = false;
                              _tapgood = true;
                              _tapokay = false;
                              _tapbad = false;
                              _tapshit = false;
                            });
                          },
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const selectactivitiespage()),
                            );
                          },
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 27,
                                backgroundColor: _tapgood ? Colors.white : Colors.lightGreen,
                                child: Icon(
                                  Icons.sentiment_satisfied_rounded,
                                  size: 54,
                                  color: _tapgood ? Colors.lightGreen : Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text(
                                  "Good",
                                  style: TextStyle(
                                      color: _tapgood ? Colors.white : Colors.lightGreen,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTapDown: (TapDownDetails details) {
                            setState(() {
                              _tapgreat = false;
                              _tapgood = false;
                              _tapokay = true;
                              _tapbad = false;
                              _tapshit = false;
                            });
                          },
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const selectactivitiespage()),
                            );
                          },
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 27,
                                backgroundColor: _tapokay ? Colors.white : Colors.yellow,
                                child: Icon(
                                  Icons.sentiment_neutral_rounded,
                                  size: 54,
                                  color: _tapokay ? Colors.yellow : Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text(
                                  "Okay",
                                  style: TextStyle(
                                      color: _tapokay ? Colors.white : Colors.yellow,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTapDown: (TapDownDetails details) {
                            setState(() {
                              _tapgreat = false;
                              _tapgood = false;
                              _tapokay = false;
                              _tapbad = true;
                              _tapshit = false;
                            });
                          },
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const selectactivitiespage()),
                            );
                          },
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 27,
                                backgroundColor: _tapbad ? Colors.white : Colors.orange,
                                child: Icon(
                                  Icons.sentiment_dissatisfied_rounded,
                                  size: 54,
                                  color: _tapbad ? Colors.orange : Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text(
                                  "Bad",
                                  style: TextStyle(
                                      color: _tapbad ? Colors.white : Colors.orange,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTapDown: (TapDownDetails details) {
                            setState(() {
                              _tapgreat = false;
                              _tapgood = false;
                              _tapokay = false;
                              _tapbad = false;
                              _tapshit = true;
                            });
                          },
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const selectactivitiespage()),
                            );
                          },
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 27,
                                backgroundColor: _tapshit ? Colors.white : Colors.red,
                                child: Icon(
                                  Icons.sentiment_very_dissatisfied_rounded,
                                  size: 54,
                                  color: _tapshit ? Colors.red : Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text(
                                  "Shit",
                                  style: TextStyle(
                                      color: _tapshit ? Colors.white : Colors.red,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
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
