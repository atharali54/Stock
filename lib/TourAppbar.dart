import 'package:flutter/material.dart';

import 'Home.dart';

// Three Dot Appbar Menu
class ThreeDotMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PopupMenuButton(
          color: Colors.grey[600],
          elevation: 30,
          itemBuilder: (BuildContext bc) => [
            PopupMenuItem(
                child: Row(children: [
              Icon(Icons.search),
              Text(
                'About Kurukshetra',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              )
            ])),
            PopupMenuItem(
                child: Row(children: [
              Icon(Icons.explore),
              Text(
                'Explore the City',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              )
            ])),
            PopupMenuItem(
                child: Row(children: [
              Icon(Icons.ac_unit),
              Text(
                'Unexplored Kurukshetra',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              )
            ])),
            PopupMenuItem(
                child: Row(children: [
              Icon(Icons.bed),
              Text(
                'Stay in Delhi',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              )
            ])),
            PopupMenuItem(
                child: Row(children: [
              Icon(Icons.social_distance),
              Text(
                'Entertainment & Fun',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              )
            ])),
          ],
          onSelected: (route) {
            print(route);
            // Note You must create respective pages for navigation
            Navigator.pushNamed(context, route);
          },
        ),
        Text(
          'Kurukshetra Darshan',
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}

// BottomNavigation widget Code
class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "6",
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 28),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Text(
              "Way To Discover\n Kurukshetra",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 15),
            ),
          ),
          Text(
            "|",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 30),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Text(
              "Kurukshetra Darshan",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}

class LineImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/outline.jpg',
      ),
    );
  }
}
