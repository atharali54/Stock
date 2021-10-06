// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:stock/Home.dart';

import 'Tour1.dart';
import 'TourAppbar.dart';

class GridAssign01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Assignment',
        home: Scaffold(
          backgroundColor: Colors.green[300],
          drawer: Drawer(),
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.blue),
            backgroundColor: Colors.white,
            titleSpacing: 0,
            actions: [
              Icon(
                Icons.map,
                size: 30,
                color: Colors.blue,
              ),
              Icon(
                Icons.search,
                size: 30,
                color: Colors.blue,
              ),
            ],
            title: ThreeDotMenu(),
            centerTitle: true,
          ),
          body: Container(
            decoration: BoxDecoration(
              color: Colors.grey[600],
              // gradient: LinearGradient(
              //   colors: [
              //     Colors.green,
              //     Colors.cyan,
              //   ],
              // ),
            ),
            child: Column(children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LineImage(), // call class in TourAppbar.dart file
                    Expanded(
                      flex: 1,
                      child: Container(
                        //padding: EdgeInsets.all(5),
                        width: double.infinity,
                        child: SingleChildScrollView(
                          child: Container(
                            color: Colors.grey[600],
                            child: Column(
                              children: [
                                MyContent(
                                  route: TourMain(),
                                  myImage:
                                      'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2018/06/2018060167.png',
                                  title: 'About Kurukshetra',
                                  icon: Icon(
                                    Icons.comment_bank_outlined,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                ),
                                MyContent(
                                  route: TourMain(),
                                  myImage:
                                      'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2018/06/2018060670.jpg',
                                  title: 'About Kurukshetra',
                                  icon: Icon(
                                    Icons.comment_bank_outlined,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                ),
                                MyContent(
                                  route: TourMain(),
                                  myImage:
                                      'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2018/06/2018060657.jpg',
                                  title: 'Unexplore Kurukshetra',
                                  icon: Icon(
                                    Icons.comment_bank_outlined,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                ),
                                MyContent(
                                  route: TourMain(),
                                  myImage:
                                      'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2019/01/2019010428.jpg',
                                  title: 'Braham Sarovar',
                                  icon: Icon(
                                    Icons.comment_bank_outlined,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                ),
                                MyContent(
                                  route: TourMain(),
                                  myImage:
                                      'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2018/06/2018060666.jpg',
                                  title: 'Explore The City',
                                  icon: Icon(
                                    Icons.comment_bank_outlined,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                ),
                                MyContent(
                                  route: TourMain(),
                                  myImage:
                                      'https://cdn.s3waas.gov.in/s3248e844336797ec98478f85e7626de4a/uploads/2018/06/2018060657.jpg',
                                  title: 'Unexplore Kurukshetra',
                                  icon: Icon(
                                    Icons.comment_bank_outlined,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    LineImage(), // call class in TourAppbar.dart file
                  ],
                ),
              ),
            ]),
          ),
          bottomNavigationBar:
              BottomNavigation(), // call class in TourAppbar.dart file
        ));
  }
}

class MyContent extends StatelessWidget {
  String title;
  final String myImage;
  final Icon icon;
  Widget route;

  MyContent({Key key, this.title, this.icon, this.myImage, this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      },
      child: Column(
        children: [
          ListTile(
            leading: icon,
            title: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
          Container(
            height: 150,
            padding: EdgeInsets.all(10),
            child: Image.network(
              myImage,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            // Image.asset(
            //   'assets/'+image,
            //   fit: BoxFit.cover,
            //   width: double.infinity,
            // ),
          ),
          Divider(
            color: Colors.white,
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
