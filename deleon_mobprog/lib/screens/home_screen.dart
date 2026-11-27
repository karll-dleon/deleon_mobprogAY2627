import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import '../widgets/custom_text.dart';
import 'newsfeed_screen.dart';
import 'notification_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<String> _titles = <String>[
    APP_NAME,
    'Notifications',
    'Friends',
    'Profile',
  ];

  final List<Widget> _screens = <Widget>[
    const NewsfeedScreen(),
    const NotificationScreen(),
    const Center(
      child: CustomFont(
        text: 'Friends Directory (Coming Soon)',
        fontSize: 16,
        color: APP_TEXT_MUTED,
      ),
    ),
    const Center(
      child: CustomFont(
        text: 'Karl Andrew De Leon — Profile',
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: APP_TEXT_DARK,
      ),
    ),
  ];

  void _onItemTapped(int index) {
    if (index < 0 || index >= _screens.length) return;
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APP_BACKGROUND,
      appBar: AppBar(
        backgroundColor: APP_SURFACE,
        elevation: 0.5,
        title: CustomFont(
          text: _titles[_selectedIndex],
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: _selectedIndex == 0 ? APP_PRIMARY : APP_TEXT_DARK,
        ),
      ),
      body: IndexedStack(index: _selectedIndex, children: _screens),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: APP_PRIMARY,
        unselectedItemColor: APP_TEXT_MUTED,
        selectedFontSize: 11.sp,
        unselectedFontSize: 11.sp,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            activeIcon: Icon(Icons.notifications),
            label: 'Alerts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            activeIcon: Icon(Icons.people),
            label: 'Friends',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
