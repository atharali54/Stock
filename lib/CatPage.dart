import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:async';

import 'package:stock/Widgets.dart';

import 'Home.dart';
import 'Model/CategoryModel.dart';

String statusValue;

class CatPage extends StatefulWidget {
  @override
  _ApiMapEx04State createState() => _ApiMapEx04State();
}

class _ApiMapEx04State extends State<CatPage> {
  List<dynamic> mapResponse;
  List listResponse;

  List<StockCat> convertedJsonData;
  List<StockCat> convertedJsonData1;

  Future<List<StockCat>> fetchData() async {
    try {
      http.Response response =
          await http.get('http://103.87.24.57/stockapi/catwise');
      if (response.statusCode == 200) {
        // final List<User> user = userFromJson(response.body);
        // return user;

        return stockCatFromJson(response.body);
      } else {
        return throw Exception('Failed to load ...');
      }
    } catch (e) {
      return throw Exception('Failed to load ...');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData().then((users) {
      setState(() {
        convertedJsonData = users;
        debugPrint(convertedJsonData.length.toString());
      });
    });
  }

  var itemStatus = [
    'Select All ',
    'I Ball Splendo',
    'Air Blower',
    'Air Conditioner',
    'Almirah',
    'Battery',
    'Bio Matric Device',
    'Cabinet',
    'Camera',
    'Card Cutter',
    'CCTV Cameras',
    'Chair',
    'Computer',
    'Laptop',
    'USB HUB' 'Wall Fan',
    'Web Cam',
  ];
  void filterdate() {
    if (statusValue != null && statusValue != 'Select All') {
      convertedJsonData1 = convertedJsonData
          .where((element) => element.category
              .toString()
              .toLowerCase()
              .contains(statusValue.toLowerCase()))
          .toList();
    }
  }

  var indexRadio;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 300,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 2.0, style: BorderStyle.solid),
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
            ),
            child: DropdownButton(
                // elevation: 10,
                isExpanded: true,
                hint: Text(
                  'Category ',
                  style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                value: statusValue,
                icon: Icon(Icons.arrow_drop_down_circle,
                    size: 30, color: Colors.brown),
                items: itemStatus.map((String items) {
                  return DropdownMenuItem(
                      value: items,
                      child: Text(
                        items,
                        style: TextStyle(
                            color: Colors.brown,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ));
                }).toList(),
                onChanged: (String newValue) {
                  setState(() {
                    statusValue = newValue;
                  });
                }),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  filterdate();
                });
              },
              child: Text('SEARCH')),
          indexRadio == statusValue
              ? Expanded(
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: convertedJsonData == null
                        ? 0
                        : convertedJsonData.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.4,
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => Itempage(
                                    id: convertedJsonData[index]
                                        .category
                                        .toString())
                                //Cart(_cartList),
                                ),
                          );
                        },
                        child: Card(
                          color: Colors.grey[350],
                          elevation: 20,
                          child: Center(
                            child: Stack(
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  convertedJsonData[index]
                                      .category
                                      .toString(), //+ convertedJsonData[index],
                                  style: TextStyle(
                                    color: Colors.brown,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Text(
                                    convertedJsonData[index].total.toString(),
                                    style: TextStyle(
                                      color: Colors.brown,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              : GridView.builder(
                  shrinkWrap: true,
                  itemCount: convertedJsonData1 == null
                      ? 0
                      : convertedJsonData1.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 10,
                    crossAxisCount: 1,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Itempage(
                                  id: convertedJsonData1[index]
                                      .category
                                      .toString())
                              //Cart(_cartList),
                              ),
                        );
                      },
                      child: ListTile(
                        leading:
                            Icon(Icons.code, size: 30, color: Colors.brown),
                        trailing: Text(
                          convertedJsonData1[index]
                              .total
                              .toString(), //+ convertedJsonData[index],
                          style: TextStyle(
                            color: Colors.brown,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        title: Text(
                          convertedJsonData1[index]
                              .category
                              .toString(), //+ convertedJsonData[index],
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    );
                  },
                )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        },
        child: Icon(Icons.home_filled),
        backgroundColor: Colors.brown,
      ),
    );
  }
}
