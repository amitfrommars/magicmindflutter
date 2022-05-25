import 'package:flutter/material.dart';

class IconTrayWidget extends StatelessWidget {
  IconTrayWidget({required this.icon1, required this.text1, required this.icon2, required this.text2, required this.icon3, required this.text3, required this.icon4, required this.text4, required this.icon5, required this.text5, required this.iconcolor, required this.textcolor,});
  final IconData icon1;
  final IconData icon2;
  final IconData icon3;
  final IconData icon4;
  final IconData icon5;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final Color iconcolor;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Center(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.white,
                      child: Icon(
                        icon1,
                        size: 40,
                        color: iconcolor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Text(
                        text1,
                        style: TextStyle(
                            color:textcolor,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.white,
                      child: Icon(
                        icon2,
                        size: 40,
                        color: iconcolor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Text(
                        text2,
                        style: TextStyle(
                            color:textcolor,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.white,
                      child: Icon(
                        icon3,
                        size: 40,
                        color: iconcolor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Text(
                        text3,
                        style: TextStyle(
                            color:textcolor,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.white,
                      child: Icon(
                        icon4,
                        size: 40,
                        color: iconcolor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Text(
                        text4,
                        style: TextStyle(
                            color:textcolor,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.white,
                      child: Icon(
                        icon5,
                        size: 40,
                        color: iconcolor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Text(
                        text5,
                        style: TextStyle(
                            color:textcolor,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
