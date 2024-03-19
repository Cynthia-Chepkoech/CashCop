import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple.shade100,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: Mai,
              children: [
                const Text(
                  'My Profile',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 12),
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.purple.shade300,
                ),
                SizedBox(height: 12),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple.shade100,
                        ),
                        color: Colors.purple.shade50,
                        borderRadius: BorderRadius.circular(12)),
                    child: Text("Cindy")),
              ]),
        ));
  }
}
