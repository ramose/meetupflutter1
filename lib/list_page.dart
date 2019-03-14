import 'package:flutter/material.dart';
import 'detail.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<Map<String, String>> items = [
    {'title': 'Sekilas Info', 'image': 'thumb_flash.png', 'new': '10'},
    {'title': 'Berita Dunia', 'image': 'thumb_world.png', 'new': '15'},
    {'title': 'Ajang Politik', 'image': 'thumb_politic.png', 'new': '8'},
    {'title': 'Social Kita', 'image': 'thumb_social.png', 'new': '3'},
    {'title': 'Olah Raga', 'image': 'thumb_sport.png', 'new': '9'},
    {'title': 'Ilmu & Pengetahuan', 'image': 'thumb_science.png', 'new': '11'},
    {'title': 'Hiburan', 'image': 'thumb_entertainment.png', 'new': '21'},
    {'title': 'Teknologi', 'image': 'thumb_tech.png', 'new': '5'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            )
          ],
            title: Image.asset(
          "assets/title_grey.png",
          color: Colors.white,
        )),
        body: ListView.separated(
          separatorBuilder: (context, i){
            return Divider();
          },
          itemCount: items.length,
          itemBuilder: (context, pos) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DetailPage()));
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/thumb/${items[pos].values.elementAt(1)}",
                              width: 80,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(12),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                items[pos].values.elementAt(0),
                                style: Theme.of(context).textTheme.headline,
                              ),
                              Text(
                                "Unread : ${items[pos].values.elementAt(2)}",
                                style: Theme.of(context).textTheme.subhead,
                              ),
                            ],
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(""),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: Icon(
                              Icons.chevron_right,
                              color: Colors.blue,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
