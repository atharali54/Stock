import 'package:flutter/material.dart';

import 'TourAppbar.dart';

import 'package:flutter/material.dart';

import 'TourAppbar.dart';

class TourMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tour Home',
      home: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.grey[600],
          titleSpacing: 0,
          actions: [
            Icon(
              Icons.map,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          ],
          title: ThreeDotMenu(),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  child: Image.asset(
                    'assets/outline.jpg',
                  ),
                ),
                Container(
                  color: Colors.grey[600],
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.comment_bank_outlined,
                          color: Colors.white,
                          size: 32,
                        ),
                        title: Text(
                          'About Kurukshetra',
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/about.jpg',
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 2,
                      ),
                    ],
                  ),
                ),

                //--------------------
                Container(
                  color: Colors.grey[600],
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.comment_bank_outlined,
                          color: Colors.white,
                          size: 32,
                        ),
                        title: Text(
                          'Explore The City',
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/explorethecity.jpg',
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 2,
                      ),
                    ],
                  ),
                ), //--------------------
                Container(
                  color: Colors.grey[600],
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.comment_bank_outlined,
                          color: Colors.white,
                          size: 32,
                        ),
                        title: Text(
                          'Unexplore Kurukshetra',
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/unexploredelhi.jpg',
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 2,
                      ),
                      Container(
                        child: Image.asset(
                          'assets/outline.jpg',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey[600],
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.comment_bank_outlined,
                          color: Colors.white,
                          size: 32,
                        ),
                        title: Text(
                          'Explore The City',
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/explorethecity.jpg',
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// class TourMain extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Material App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Material App Bar'),
//         ),
//         body: Center(
//           child: Container(
//             decoration: ,
//             child: Text(
//               'Hello Flutter',
//              ),
//             ),
//           ),
//         ),
      
//     );
//   }
// }
