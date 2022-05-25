import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:magicmind/custom_widgets/icon_tray_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:expandable/expandable.dart';
import 'package:magicmind/screens/hru.dart';

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
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
              child: Card(
                color: Colors.black,
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Container(
                  height: 110,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pop(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const hru()),
                                );
                              },
                              icon: Icon(Icons.arrow_back_rounded),
                              color: Colors.grey,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.sentiment_very_satisfied_rounded),
                              color: Colors.green,
                              iconSize: 30,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.save_rounded),
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "What have you been upto?",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 149, 0, 0),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 70),
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
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    tapBodyToExpand: true,
                                    tapBodyToCollapse: true,
                                    hasIcon: true,
                                  ),
                                  header: Container(
                                    height: 65,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 20, 0),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Career & Productivity",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  collapsed: Container(),
                                  expanded: IconTrayWidget(
                                    icon1: Icons.work_rounded,
                                    text1: "Work",
                                    icon2: Icons.menu_book_rounded,
                                    text2: "Study",
                                    icon3: Icons.list,
                                    text3: "Make List",
                                    icon4: Icons.edit_rounded,
                                    text4: "Exam",
                                    icon5: Icons.light_rounded,
                                    text5: "Focus",
                                    iconcolor: Colors.blue,
                                    textcolor: Colors.white,
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
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 20, 0),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Fitness",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  collapsed: Container(),
                                  expanded: IconTrayWidget(
                                    icon1: Icons.directions_bike_rounded,
                                    text1: "Cycle",
                                    icon2: Icons.sports_mma_rounded,
                                    text2: "Boxing",
                                    icon3: Icons.fitness_center_rounded,
                                    text3: "Gym",
                                    icon4: Icons.sports_basketball_rounded,
                                    text4: "Sports",
                                    icon5: Icons.directions_run_rounded,
                                    text5: "Run",
                                    iconcolor: Colors.blue,
                                    textcolor: Colors.white,
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
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 20, 0),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Hobbies",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  collapsed: Container(),
                                  expanded: IconTrayWidget(
                                    icon1: Icons.music_note,
                                    text1: "Music",
                                    icon2: Icons.book_rounded,
                                    text2: "Reading",
                                    icon3: Icons.gamepad_rounded,
                                    text3: "Gaming",
                                    icon4: Icons.theaters_rounded,
                                    text4: "Movie",
                                    icon5: Icons.videocam_rounded,
                                    text5: "Vlogging",
                                    iconcolor: Colors.blue,
                                    textcolor: Colors.white,
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
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 20, 0),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Beauty",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  collapsed: Container(),
                                  expanded: IconTrayWidget(
                                    icon1: Icons.face_retouching_natural,
                                    text1: "Haircut",
                                    icon2: Icons.book_rounded,
                                    text2: "Reading",
                                    icon3: Icons.gamepad_rounded,
                                    text3: "Gaming",
                                    icon4: Icons.theaters_rounded,
                                    text4: "Movie",
                                    icon5: Icons.videocam_rounded,
                                    text5: "Vlogging",
                                    iconcolor: Colors.blue,
                                    textcolor: Colors.white,
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
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 20, 0),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Chores",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  collapsed: Container(),
                                  expanded: IconTrayWidget(
                                    icon1: Icons.face_retouching_natural,
                                    text1: "Haircut",
                                    icon2: Icons.book_rounded,
                                    text2: "Reading",
                                    icon3: Icons.gamepad_rounded,
                                    text3: "Gaming",
                                    icon4: Icons.theaters_rounded,
                                    text4: "Movie",
                                    icon5: Icons.videocam_rounded,
                                    text5: "Vlogging",
                                    iconcolor: Colors.blue,
                                    textcolor: Colors.white,
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
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 0, 20, 0),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Social",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  collapsed: Container(),
                                  expanded: IconTrayWidget(
                                    icon1: Icons.call_rounded,
                                    text1: "Call",
                                    icon2: Icons.people_rounded,
                                    text2: "Friends",
                                    icon3: Icons.family_restroom_rounded,
                                    text3: "Family",
                                    icon4: Icons.favorite_rounded,
                                    text4: "Date",
                                    icon5: Icons.wine_bar_rounded,
                                    text5: "Party",
                                    iconcolor: Colors.blue,
                                    textcolor: Colors.white,
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
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.save_rounded),
        label: const Text("Save"),
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
