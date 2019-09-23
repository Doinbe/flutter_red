import 'package:flutter/material.dart';
import 'package:flutter_red/base_card_widget.dart';

///分享卡片
class CardShare extends BaseCardWidget {
  @override
  _CardShareState createState() => _CardShareState();
}

class _CardShareState extends BaseCardWidgetState {
  @override
  topTitle(String title) {
    return super.topTitle('分享得联名卡');
  }

  @override
  topSmallTitle(String title) {
    return super.topSmallTitle('/第19期');
  }

  @override
  subTitle(String title) {
    return super.subTitle('分享给朋友最多可获得12天无限卡');
  }

  @override
  bottomWidget() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Expanded(
              child: Padding(
            padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
            child: Image.network(
                'http://www.devio.org/io/flutter_beauty/card_list.png'),
          )),
          Container(
            alignment: AlignmentDirectional.center, //重写父布局的位置约束，位于父布局居中
            child: Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                '29876678人，参与活动',
                style: TextStyle(color: Colors.grey, fontSize: 11),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
