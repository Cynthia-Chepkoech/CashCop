import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile Screen'),
          // backgroundColor: Colors.grey[900],
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.purple.shade300,
          ),
          SizedBox(height: 12),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16,vertical:8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.purple.shade100,),
                color: Colors.purple.shade50,
                borderRadius: BorderRadius.circular(12)),
            child:Text("Cindy")
          ),
        ]));
  }
}
