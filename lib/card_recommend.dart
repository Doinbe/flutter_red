import 'package:flutter_red/base_card_widget.dart';
import 'package:flutter/material.dart';

///本周推荐
class CardRecommend extends BaseCardWidget {
  @override
  _CardRecommendState createState() => _CardRecommendState();
}

class _CardRecommendState extends BaseCardWidgetState {
  @override
  void initState() {
    subTitleColor = Color(0xffb99444);
    super.initState();
  }

  @override
  topTitle(String title) {
    return super.topTitle('本周推荐');
  }

  @override
  subTitle(String title) {
    return super.subTitle('送你一天无限卡·全场书记免费读 >');
  }

  @override
  bottomWidget() {
    //高度撑满
    return Expanded(
        child: Container(
      constraints: BoxConstraints.expand(), //通过BoxConstraints尽可能撑满父容器
      margin: EdgeInsets.only(top: 10),
      child: Image.network('http://www.devio.org/io/flutter_beauty/card_1.jpg',
          fit: BoxFit.cover),
    ));
  }
}
