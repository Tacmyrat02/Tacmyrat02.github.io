// ignore: file_names

import 'package:edu/screens/home_screen.dart';
import 'package:edu/screens/search_screen.dart';
import 'package:edu/screens/Allticket.dart';
import 'package:edu/screens/profile_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class bottom_navigation extends StatefulWidget {
  const bottom_navigation({super.key});

  @override
  State<bottom_navigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<bottom_navigation> {
final appScreen =[

  const HomePage(),
  const SearchScreen(),
  const AllTickets(),
  const ProfileScreen(),
];
int _selectedIndex=0;
void _onTapped(int index){
  setState(() {
    _selectedIndex=index;
  });
 
}

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: const Text("app bar")),
      body: appScreen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTapped,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Color(0xFF526400),
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: "search",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
            label: "Tickets",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            label: "profile",
          ),
        ],
      ),
    );
  }
}
