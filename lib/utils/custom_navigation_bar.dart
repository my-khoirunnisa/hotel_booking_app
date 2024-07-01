import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking/presentations/home/home_screen.dart';
import 'package:flutter_hotel_booking/presentations/message/message.dart';
import 'package:flutter_hotel_booking/presentations/settings/settings_screen.dart';
import 'package:flutter_hotel_booking/presentations/ticket/ticket_screen.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int myCurrentIndex = 0;
  List pages = [
    const HomeScreen(),
    const MessageScreen(),
    const TicketScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.black,
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            decoration: const BoxDecoration(color: Colors.transparent),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BottomNavigationBar(
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.grey,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                currentIndex: myCurrentIndex,
                onTap: (index) {
                  setState(() {
                    myCurrentIndex = index;
                  });
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.reply), label: 'Message'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.ticket), label: 'Ticket'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.settings), label: 'Settings'),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: pages[myCurrentIndex],
        ),
      ),
    );
  }
}
