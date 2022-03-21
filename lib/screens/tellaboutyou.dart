import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:magicmind/screens/camerauipage.dart';
import 'package:magicmind/screens/homescreen.dart';

class tellaboutyou extends StatefulWidget {
  const tellaboutyou({Key? key}) : super(key: key);

  @override
  State<tellaboutyou> createState() => _State();
}

class _State extends State<tellaboutyou> {
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
            padding: EdgeInsets.fromLTRB(0, 0, 0, 230),
            child: Center(
                child: GestureDetector(
                  child: CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.blue,
                    child: Stack(children: [
                      Align( alignment: Alignment.center, child: Icon(Icons.tag_faces_outlined, size: 110, color: Colors.white,)),
                      Align( alignment: Alignment.bottomRight,
                        child: CircleAvatar(
                          radius: 20, backgroundColor: Colors.white70,
                          child: Icon(Icons.add_a_photo_rounded, color: Colors.blue,),
                        ),
                      ),
                    ]),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CameraApp()),
                    );
                  },
                )
                ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 550),
            child: Center(
                child: Text(
              "Welcome to MagicMind!",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 425),
            child: Center(
                child: Text(
              "Before we start the magic, lets get aquainted:)",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 15),
            )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 350, 20, 0),
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 22.5, horizontal: 32.5),
                  fillColor: Colors.blueGrey,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.blueGrey, width: 2.0),
                  ),
                  hintText: 'Full Name',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 450, 20, 0),
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 22.5, horizontal: 32.5),
                  fillColor: Colors.blueGrey,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.blueGrey, width: 2.0),
                  ),
                  hintText: 'Mobile Number',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 550, 20, 0),
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 22.5, horizontal: 32.5),
                  fillColor: Colors.blueGrey,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.blueGrey, width: 0),
                  ),
                  hintText: 'Date Of Birth (DD/MM/YYYY)',
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 600, 20, 0),
              child: Center(
                child: SizedBox(
                  width: double.maxFinite,
                  height: 65,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const homescreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(25.0))),
                    icon: Icon(Icons.double_arrow_rounded),
                    label: Text(
                      "Continue",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
