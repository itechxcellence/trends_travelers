import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/encashments_page.dart';
import 'pages/referrals_page.dart';
import 'pages/profile_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen(
      {super.key,});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static const List<String> pageTitles = [
    'Home',
    'Encashments',
    'Referrals',
    'Profile',
  ];

  // Remove the late final _pages variable and replace it with a getter.
  List<Widget> get _pages => [
        const HomePage(),
        const EncashmentsPage(),
        const ReferralsPage(),
        ProfilePage(),
      ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildBottomNavBar() {
    final theme = Theme.of(context);
    return Material(
      elevation: theme.brightness == Brightness.light ? 8 : 2,
      borderRadius: BorderRadius.circular(16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: theme.colorScheme.primary,
          unselectedItemColor: theme.colorScheme.secondary,
          selectedLabelStyle: TextStyle(color: theme.colorScheme.primary),
          unselectedLabelStyle: TextStyle(color: theme.colorScheme.secondary),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.attach_money), label: 'Encashments'),
            BottomNavigationBarItem(
                icon: Icon(Icons.group), label: 'Referrals'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/logo.png',
              height: 60,
            ),
            const SizedBox(width: 10),
            Text(
              'Trends Travelers - ${pageTitles[_selectedIndex]}', 
              style: const TextStyle(fontSize: 16),),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _buildBottomNavBar(),
      ),
    );
  }
}
