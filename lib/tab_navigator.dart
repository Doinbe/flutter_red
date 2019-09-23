import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_red/content_page.dart';


class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;
  var _currentIndex = 0;
  final ContentPageController _pageController = ContentPageController();

  @override
  void initState() {
    _statusBar();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContentPage(
        contentPageController: _pageController,
        onPageChanged: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              _pageController.jumpToPage(index);
            });
          },
          items: [
            _bottomItem('本周', Icons.folder, 0),
            _bottomItem('分享', Icons.explore, 1),
            _bottomItem('免费', Icons.donut_small, 2),
            _bottomItem('长安', Icons.person, 3),
          ]),
    );
  }

  _bottomItem(String title, IconData icon, int index) {
    return BottomNavigationBarItem(
        icon: Icon(icon, color: _defaultColor),
        activeIcon: Icon(icon, color: _activeColor),
        title: Text(title,
            style: TextStyle(
                color: _currentIndex != index ? _defaultColor : _activeColor)));
  }

  ///状态栏样式-沉浸式状态栏
  _statusBar(){
    //黑色沉浸式状态栏，基于SystemUiOverStyle.dark修改statusBarColor 为透明
    SystemUiOverlayStyle uiOverlayStyle = SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF000000),
      systemNavigationBarDividerColor: null,
      statusBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    );
    SystemChrome.setSystemUIOverlayStyle(uiOverlayStyle);
  }
}
