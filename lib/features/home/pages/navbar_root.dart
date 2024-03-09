import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_18/features/home/pages/home_page.dart';

import '../../messages/page/message_screen.dart';
import '../../profile/profile_screen.dart';
import '../../settings/pages/setting_screen.dart';

class NavBarRoot extends StatefulWidget {
  const NavBarRoot({super.key});

  @override
  State<NavBarRoot> createState() => _NavBarRootState();
}

class _NavBarRootState extends State<NavBarRoot> {

  int _selectedIndex = 0;
  final _screens =[
    // Home screen
    const HomePage(),
    // Messages screen
    const MessageScreen(),
    // Schedule screen
    const ProfileScreen(),
    // Settings screen
    const SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xFF4CA6A8),
          unselectedItemColor: Colors.black12,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          currentIndex: _selectedIndex,
          onTap: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),
              label: "Home",
            ),BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_text_fill),
              label: "Message",
            ),BottomNavigationBarItem(icon: Icon(Icons.person),
              label: "Profile",
            ),BottomNavigationBarItem(icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
