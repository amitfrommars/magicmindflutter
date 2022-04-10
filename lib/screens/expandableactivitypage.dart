import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpActivityPage extends StatefulWidget {
  const ExpActivityPage({Key? key}) : super(key: key);

  @override
  State<ExpActivityPage> createState() => ExpActivityPageState();
}

class ExpActivityPageState extends State<ExpActivityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExpandableTheme(
        data: const ExpandableThemeData(
          iconColor: Colors.blue,
          useInkWell: true,
        ),
        child: ListView(
          physics: const FixedExtentScrollPhysics(),
          children: <Widget>[
            ActivitiesCard1(),
            ActivitiesCard2(),
          ],
        ),
      ),
    );
  }
}

class ActivitiesCard1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 2.5, 10, 2.5),
      child: ScrollOnExpand(
        child: Card(
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
                  height: 100,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                          "Items",
                        ),
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
    ));
  }
}

class ActivitiesCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    buildItem(String label) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(label),
      );
    }

    return ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 2.5, 10, 2.5),
      child: ScrollOnExpand(
        child: Card(
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
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                          "Items",
                        ),
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
    ));
  }
}
