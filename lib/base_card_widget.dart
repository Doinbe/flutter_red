import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///卡片基类
class BaseCardWidget extends StatefulWidget {
  @override
  BaseCardWidgetState createState() => BaseCardWidgetState();
}

class BaseCardWidgetState extends State<BaseCardWidget> {
  Color subTitleColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      //裁切
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(6),
      clipBehavior: Clip.antiAlias, //抗锯齿
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: <Widget>[topWidget(), bottomWidget()],
        ),
      ),
    );
  }

  topWidget() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 26, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
            topTitle(''),
            topSmallTitle(''),
          ]),
          subTitle(''),
        ],
      ),
    );
  }

  bottomWidget() {
    return Container();
  }

  topTitle(String title) {
    return Text(title, style: TextStyle(fontSize: 22));
  }

  topSmallTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(left: 5,bottom: 5),
      child: Text(title, style: TextStyle(fontSize: 11)),
    );
  }

  subTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: Text(title, style: TextStyle(color: subTitleColor, fontSize: 11)),
    );
  }
}
