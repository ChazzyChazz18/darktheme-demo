import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:project_a/home_page/home.dart';
import 'package:project_a/widgets/change_theme_button.dart';

class MainHolder extends StatefulWidget {
  MainHolder({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainHolderState createState() => _MainHolderState(title);
}

class _MainHolderState extends State<MainHolder> {
  final String title;

  _MainHolderState(this.title);

  int _currentIndex = 0;

  final tabs = [
    MyHomePage(),
    Center(child: Text("Search")),
    Center(child: Text("Settings")),
  ];

  @override
  Widget build(BuildContext context) {
    final customAppBar = AppBar(
      title: Center(
        child: Text("${this.title}"),
      ),
      actions: [
        ChangeThemeButtonWidget(),
      ],
    );

    final customBottomNavBar = CurvedNavigationBar(
      index: _currentIndex,
      items: [
        Icon(Icons.home, size: 25),
        Icon(Icons.search, size: 25),
        Icon(Icons.settings, size: 25)
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      color: Theme.of(context).primaryColor,
      backgroundColor: Colors.transparent,
      height: 50.0,
    );

    return Scaffold(
      appBar: customAppBar,
      body: tabs[_currentIndex],
      bottomNavigationBar: customBottomNavBar,
    );
  }
}
