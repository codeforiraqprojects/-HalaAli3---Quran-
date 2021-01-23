import 'package:flutter/material.dart';
import 'package:quran/pages/suggest_page.dart';

import 'about_page.dart';
import 'home_page.dart';

class TabBarViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabBarViewPage();
  }
}

class _TabBarViewPage extends State<TabBarViewPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Material(
          color: Color(0xFF697C9A),
          child: TabBar(
            controller: tabController,
            tabs: <Widget>[
              Icon(Icons.home, size: 27, color: Colors.yellow[200]),
              Icon(Icons.subject, size: 27, color: Colors.yellow[200]),
              Icon(Icons.favorite, size: 27, color: Colors.yellow[200])
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: <Widget>[
            HomePage(),
            SuggestPage(),
            AboutPage(),
          ],
        ));
  }
}
