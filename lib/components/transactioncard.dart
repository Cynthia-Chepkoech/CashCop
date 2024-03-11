import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final Icon icon;
  final String title;
  final String subtitle;
  final String day;
  final String amount;
  const TransactionCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtitle,
      required this.day,
      required this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: icon,
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(amount),
            Text(day),
          ],
        ),
      ),
    );
  }
}
