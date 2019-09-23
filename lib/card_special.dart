import 'package:flutter/material.dart';
import 'package:flutter_red/base_card_widget.dart';

///长安十二时辰
class CardSpecial extends BaseCardWidget {
  @override
  _CardSpecialSate createState() => _CardSpecialSate();
}

class _CardSpecialSate extends BaseCardWidgetState {
  @override
  topWidget() {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 30, bottom: 30, right: 66, left: 66),
          decoration: BoxDecoration(
            color: Color(0xfffffcf7),
          ),
          child: Container(
            decoration: BoxDecoration(
              //设置阴影
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 20,
                  offset: Offset(
                      //水平偏移距离
                      0,
                      //垂直偏移距离
                      20),
                ),
              ],
            ),
            child: Image.network(
                'http://www.devio.org/io/flutter_beauty/changan_book.jpg'),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 20, top: 15, bottom: 20, right: 15),
          decoration: BoxDecoration(
            color: Color(0xfff7f3ea),
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '长安十二时辰',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Color(0xff473b25), fontSize: 18),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      '马伯庸',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Color(0xff7d725c), fontSize: 13),
                    ),
                  )
                ],
              )),
              Container(
                margin: EdgeInsets.only(left: 20),
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        colors: [Color(0xffd9bc82), Color(0xffecd9ae)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight)),
                child: Text(
                  '分享免费领',
                  style: TextStyle(color: Color(0xff4f3b1a), fontSize: 13),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  bottomWidget() {
    return Expanded(
        child: Column(
      //水平撑开
      crossAxisAlignment: CrossAxisAlignment.stretch,
      //均匀分布
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.network(
                'http://www.devio.org/io/flutter_beauty/double_quotes.jpg',
                height: 26,
                width: 26,
              ),
              Text('揭露历史真相')
            ],
          ),
        ),
        Text(
          '更多免费好书领不停 >',
          style: TextStyle(color: Colors.blue, fontSize: 12),
          textAlign: TextAlign.center,
        )
      ],
    ));
  }
}
