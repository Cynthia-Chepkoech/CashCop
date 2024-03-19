import 'package:cashcop/components/drawer.dart';
import 'package:cashcop/pages/profilepage.dart';
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
  String name = "Mike";
  final List<Widget> screens = [
    const Homescreen(),
    const Transactions(),
    const Addscreen(),
    const Notifications(),
    const Profile()
  ];
  int selectedIndex = 0;

  get signOut => null;
  void changeTab(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void goToProfilePage() {
    Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ProfilePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          backgroundColor: Colors.purple.shade300,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          onTap: changeTab,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.purple.shade300,
                icon: Icon(Icons.home, color: Colors.black),
                label: "home"),
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
