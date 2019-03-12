import 'package:flutter/material.dart';
import 'detail.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<Map<String, String>> items = [
    {'title': 'Lorem Ipsum', 'image': 'img1.png'},
    {'title': 'Dolor Sit Amet', 'image': 'img2.jpg'},
    {'title': 'Lorem Ipsum Dolor', 'image': 'img3.png'},
    {'title': 'Ipsum Dolor Amet Sit', 'image': 'img4.png'},
    {'title': 'Lorem Ipsum', 'image': 'img1.png'},
    {'title': 'Dolor Sit Amet', 'image': 'img2.jpg'},
    {'title': 'Lorem Ipsum Dolor', 'image': 'img3.png'},
    {'title': 'Ipsum Dolor Amet Sit', 'image': 'img4.png'},
    {'title': 'Lorem Ipsum', 'image': 'img1.png'},
    {'title': 'Dolor Sit Amet', 'image': 'img2.jpg'},
    {'title': 'Lorem Ipsum Dolor', 'image': 'img3.png'},
    {'title': 'Ipsum Dolor Amet Sit', 'image': 'img4.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("List")),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, pos) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DetailPage()));
              },
              child: Container(
                height: 40,
                  margin: EdgeInsets.only(left: 10),
                  child: Text(items[pos].values.elementAt(0))),
            );
          },
        ));
  }
}
