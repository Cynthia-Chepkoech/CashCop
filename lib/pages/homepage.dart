import 'package:cashcop/screens/addscreen.dart';
import 'package:cashcop/screens/homescreen.dart';
import 'package:cashcop/screens/notificationscreen.dart';
import 'package:cashcop/screens/profilescreen.dart';
import 'package:cashcop/screens/transactionscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Widget> screens = [
    const Homescreen(),
    const Transactions(),
    const Addscreen(),
    const Notifications(),
    const Profile()
  ];
  int selectedIndex = 0;
  void changeTab(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade200,
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          onTap: changeTab,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.black), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.analytics, color: Colors.black),
                label: "transactions"),
            BottomNavigationBarItem(
                icon: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(Icons.add, color: Colors.white),
                ),
                label: "add"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications, color: Colors.black),
                label: "notifications"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.black),
                label: "profile"),
          ]),
    );
  }
}
