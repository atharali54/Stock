import 'package:flutter/material.dart';
import 'package:stock/Home.dart';

import 'CatPage.dart';
import 'Search.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [Colors.white, Colors.brown],
                stops: [0.3, 1],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 90.0,
                  height: 90.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/homeBg.jpg',
                          ))),
                ),
                Text(
                  'STOCK',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.add_circle, color: Colors.brown),
            title: Text(
              'Add Item',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.search, color: Colors.brown),
            title: Text(
              'Categories',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CatPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.search, color: Colors.brown),
            title: Text(
              'Search',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.list_alt_sharp, color: Colors.brown),
            title: Text(
              'Distributed ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
        ],
      ),
    );
  }
}
