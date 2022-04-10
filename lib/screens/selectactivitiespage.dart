import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:magicmind/screens/expandableactivitypage.dart';
import 'package:magicmind/screens/homescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:expandable/expandable.dart';

class selectactivitiespage extends StatefulWidget {
  const selectactivitiespage({Key? key}) : super(key: key);

  @override
  State<selectactivitiespage> createState() => _State();
}

class _State extends State<selectactivitiespage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ExpandableTheme(
        data: const ExpandableThemeData(
          iconColor: Colors.grey,
          useInkWell: true,
        ),
        child: Stack(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 560),
              child: Center(
                  child: Text(
                "What have you been upto?",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )),
            ),
            Container(
              width: 360,
              height: 75,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 35, 0, 0),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => const homescreen()),
                    );
                  },
                  icon: Icon(Icons.arrow_back_rounded),
                  color: Colors.black,
                  alignment: Alignment.centerLeft,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 130, 0, 0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ExpandableNotifier(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 2.5, 10, 2.5),
                        child: Card(
                          color: Colors.black54,
                          shadowColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: <Widget>[
                              ExpandablePanel(
                                theme: const ExpandableThemeData(
                                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                                  tapBodyToExpand: true,
                                  tapBodyToCollapse: true,
                                  hasIcon: true,
                                ),
                                header: Container(
                                  height: 65,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Items",
                                          style: TextStyle(color: Colors.white, fontSize: 20),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                collapsed: Container(),
                                expanded: Container(
                                  height: 100,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    ExpandableNotifier(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 2.5, 10, 2.5),
                        child: Card(
                          color: Colors.black54,
                          shadowColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: <Widget>[
                              ExpandablePanel(
                                theme: const ExpandableThemeData(
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  tapBodyToExpand: true,
                                  tapBodyToCollapse: true,
                                  hasIcon: true,
                                ),
                                header: Container(
                                  height: 65,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Items",
                                          style: TextStyle(color: Colors.white, fontSize: 20),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                collapsed: Container(),
                                expanded: Container(
                                  height: 100,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ExpActivityPage()),
          );
        },
        icon: Icon(Icons.edit),
        label: const Text("Edit Moods"),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
