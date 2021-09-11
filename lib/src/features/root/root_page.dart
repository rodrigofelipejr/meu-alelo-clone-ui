import 'package:alelo/src/features/club/club_page.dart';
import 'package:alelo/src/features/home/home_page.dart';
import 'package:alelo/src/features/messages/messages_page.dart';
import 'package:alelo/src/features/options/options_page.dart';
import 'package:flutter/material.dart';

import '../../shared/resources/resources.dart';
import 'widgets/widgets.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ClubPage(),
    MessagesPage(),
    OptionsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayWhite,
      body: _widgetOptions.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
