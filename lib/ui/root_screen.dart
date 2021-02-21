import 'package:flutter/material.dart';
import 'package:naturesave/ui/leaderboard/leaderboard_screen.dart';
import 'package:naturesave/ui/map/map_screen.dart';
import 'package:naturesave/ui/profile/profile_screen.dart';

class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> with TickerProviderStateMixin {
  int defaultTabLength = 3;
  int _selectedPage = 0;

  PageController _pageController;
  TabController _tabController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    _tabController = TabController(initialIndex: 0, vsync: this, length: 3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: true,
        top: false,
        child: DefaultTabController(
          length: defaultTabLength,
          child: Column(
            children: <Widget>[
              Expanded(
                child: PageView(
                  children: [MapScreen(), LeaderBoardScreen(), ProfileScreen()],
                  physics: NeverScrollableScrollPhysics(),
                  controller: _pageController,
                ),
              ),
              _tabBarItems,
            ],
          ),
        ),
      ),
    );
  }

  Widget get _tabBarItems => TabBar(
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(color: Colors.green, width: 4.0),
          insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 40.0),
        ),
        tabs: <Widget>[
          Tab(icon: Icon(Icons.map)),
          Tab(icon: Icon(Icons.home)),
          Tab(icon: Icon(Icons.person_pin))
        ],
        onTap: _changePage,
      );

  void _changePage(int value) {
    print(value);
    _pageController.animateToPage(value,
        duration: Duration(milliseconds: 200), curve: Curves.easeIn);
  }
}
