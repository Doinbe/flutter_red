import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    double _topPading = MediaQuery.of(context).padding.top;
    return Container(
      margin: EdgeInsets.fromLTRB(20, _topPading + 10, 20, 5),
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      decoration: BoxDecoration(
        color: Colors.white60,
        borderRadius: BorderRadius.circular(19),
      ),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.search,
            color: Colors.grey,
          ),
          Expanded(
              child: Text(
            '长安十二时辰',
            style: TextStyle(color: Colors.grey, fontSize: 15),
          )),
          Container(
            width: 1,
            height: 20,
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(color: Colors.grey),
          ),
          Text(
            '书城',
            style: TextStyle(fontSize: 13),
          )
        ],
      ),
    );
  }
}
