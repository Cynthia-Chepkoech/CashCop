import 'package:cashcop/components/drawer.dart';
import 'package:cashcop/pages/profilepage.dart';
import 'package:cashcop/screens/addscreen.dart';
import 'package:cashcop/screens/homescreen.dart';
import 'package:cashcop/screens/notificationscreen.dart';
import 'package:cashcop/screens/profilescreen.dart';
import 'package:cashcop/screens/transactionscreen.dart';
import 'package:flutter/material.dart';

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
          onTap: changeTab,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.black), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.analytics, color: Colors.black),
                label: "transactions"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add, color: Colors.black), label: "add"),
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
