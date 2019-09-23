import 'package:flutter_red/base_card_widget.dart';
import 'package:flutter/material.dart';

///免费听书
class CardFree extends BaseCardWidget {
  @override
  _CardFreeState createState() => _CardFreeState();
}

const List BOOKLIST = [
  {
    'bookName': '暴力沟通',
    'imgUrl':
        'http://www.devio.org/io/flutter_beauty/book_cover/51VykQqGq9L._SY346_.jpg',
    'oldPrice': '19.6'
  },
  {
    'bookName': '论中国',
    'imgUrl':
        'http://www.devio.org/io/flutter_beauty/book_cover/41APiBzC41L.jpg',
    'oldPrice': '36.9'
  },
  {
    'bookName': '饥饿的盛世：乾坤时代的得与失',
    'imgUrl':
        'http://www.devio.org/io/flutter_beauty/book_cover/51M6M87AXOL.jpg',
    'oldPrice': '14.5'
  },
  {
    'bookName': '焚天之怒第4卷至大结局',
    'imgUrl':
        'http://www.devio.org/io/flutter_beauty/book_cover/51oIE7H5gnL.jpg',
    'oldPrice': '56.9'
  },
  {
    'bookName': '我就是风口',
    'imgUrl':
        'http://www.devio.org/io/flutter_beauty/book_cover/51vzcX1U1FL.jpg',
    'oldPrice': '88.8'
  },
  {
    'bookName': '大宋的智慧',
    'imgUrl':
        'http://www.devio.org/io/flutter_beauty/book_cover/517DW6EbhGL.jpg',
    'oldPrice': '22.8'
  },
];

class _CardFreeState extends BaseCardWidgetState {
  @override
  topTitle(String title) {
    return super.topTitle('免费听书馆');
  }

  @override
  subTitle(String title) {
    return super.subTitle('第 108 期');
  }

  @override
  bottomWidget() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: <Widget>[
            Expanded(child: _bookList()),
            Padding(
              padding: EdgeInsets.only(bottom: 20,top: 15),
              child: _bottomButton(),
            )
          ],
        ),
      ),
    );
  }

  _bookList() {
    return GridView.count(
      //列数
      crossAxisCount: 3,
      //横向间距
      mainAxisSpacing: 15,
      //纵向间距
      crossAxisSpacing: 15,
      //宽高比例
      childAspectRatio: 0.45,
      padding: EdgeInsets.only(right: 20, left: 20),
      children: BOOKLIST.map((item) {
        return bookItem(item);
      }).toList(),
    );
  }

  Widget bookItem(Map<String, String> map) {
    return Column(
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Image.network(
              map['imgUrl'],
              fit: BoxFit.cover,
            ),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(15)),
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
            ),
            Positioned(
                left: 0,
                bottom: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(color: Colors.black54),
                  padding: EdgeInsets.all(5),
                  child: Text(
                    '原价 ${map['oldPrice']}',
                    style: TextStyle(fontSize: 11, color: Colors.white),
                  ),
                )),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            map['bookName'],
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 16),
          ),
        )
      ],
    );
  }

  _bottomButton() {
    return FractionallySizedBox(
      //宽度填满父布局
      widthFactor: 1,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: RaisedButton(
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          padding: EdgeInsets.only(top: 13, bottom: 15),
          color: Colors.blue,
          child: Text(
            '免费领取',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
