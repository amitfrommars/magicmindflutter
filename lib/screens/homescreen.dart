import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:magicmind/screens/calendarpage.dart';
import 'package:magicmind/screens/chartspage.dart';
import 'package:magicmind/screens/homescreenpage.dart';
import 'package:magicmind/screens/hru.dart';
import 'package:magicmind/screens/morefunctionspage.dart';
import 'package:path/path.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _State();
}

class _State extends State<homescreen> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    homescreenpage(),
    calendarpage(),
    chartspage(),
    morefunctionspage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),

      bottomNavigationBar: SizedBox(
        height: 65,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 10,
          iconSize: 30,
          selectedIconTheme: IconThemeData(color: Colors.black, size: 32),
          unselectedItemColor: Colors.blueGrey,
          // selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          // showUnselectedLabels: true,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_rounded,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month_rounded,
              ),
              label: 'Calendar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.insert_chart_rounded),
              label: 'Charts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more),
              label: 'More',
            ),
          ],
          currentIndex: _selectedIndex, //New
          onTap: _onItemTapped,
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const hru()),
        );},
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
