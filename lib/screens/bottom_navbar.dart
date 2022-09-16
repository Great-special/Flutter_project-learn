import 'package:booking_app/screens/home_screen.dart';
import 'package:booking_app/screens/profile_screen.dart';
import 'package:booking_app/screens/search_screen.dart';
import 'package:booking_app/screens/ticket_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  static final List<Widget> bodyOptions = <Widget> [
    const HomePage( title: 'Booking App'),
    const SearchScreen(),
    const TicketScreen(),
    const ProfilePage(),
  ];

  int index = 3;

  void tappedPosition (int position){
    setState(() { // changing the index position 
      index = position;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(child: bodyOptions[index]),

      bottomNavigationBar: BottomNavigationBar(
        onTap: tappedPosition, // selecting the index position from the navbar items
        currentIndex: index, // seting the index position 
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed, // stops the navbar items from shifting

        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
            label: 'Ticket',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
