import 'package:flutter/material.dart';
import 'package:flutter_red/card_free.dart';
import 'package:flutter_red/card_recommend.dart';
import 'package:flutter_red/card_share.dart';
import 'package:flutter_red/card_special.dart';
import 'package:flutter_red/custom_appbar.dart';

class ContentPage extends StatefulWidget {
  final ValueChanged<int> onPageChanged;
  final ContentPageController contentPageController;

  const ContentPage({Key key, this.onPageChanged, this.contentPageController})
      : super(key: key);

  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  PageController _pageController = PageController(viewportFraction: 0.8);

  @override
  void initState() {
    if(widget.contentPageController != null){
      widget.contentPageController._pageController = _pageController;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomAppBar(),
        Expanded(
            child: PageView(
          controller: _pageController,
          onPageChanged: widget.onPageChanged,
          children: <Widget>[
            _pageItem(CardRecommend()),
            _pageItem(CardShare()),
            _pageItem(CardFree()),
            _pageItem(CardSpecial()),
          ],
        )),
      ],
    );
  }

  _pageItem(Widget widget) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: widget,
    );
  }
}

class ContentPageController {
  PageController _pageController;

  void jumpToPage(int index) {
    _pageController?.jumpToPage(index);
  }
}
