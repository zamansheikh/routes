import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:routes/screens/about_screen.dart';
import 'package:routes/screens/add_info.dart';
import 'package:routes/screens/home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const AddInfo(),
    const AboutScreen(),
    
  ];
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: Center(child: _widgetOptions[selectedIndex]),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: _onItemTapped,
          elevation: 8.0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: const Color.fromARGB(255, 37, 56, 219),
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              label: 'Home',
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            ),
            BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_add_circle_regular),
              label: 'Add',
              activeIcon: Icon(FluentSystemIcons.ic_fluent_add_circle_filled),
            ),
            BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_info_regular),
              label: 'Info',
              activeIcon: Icon(FluentSystemIcons.ic_fluent_info_filled),
            ),
          ],
        ),
      ),
    );
  }
}
