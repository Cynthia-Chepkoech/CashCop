import 'package:cashcop/components/myCard.dart';
import 'package:cashcop/components/transactioncard.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.all(12),
        color: Colors.purple.shade400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Hello Cindy",
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
            const SizedBox(
              height: 12,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Balance",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Ksh 1500",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyCard(
                  title: "Income",
                  amount: "Ksh 15000",
                  color: Colors.green.shade200,
                  icon: const Icon(Icons.download, color: Colors.green),
                ),
                MyCard(
                  title: "Expense",
                  amount: "Ksh 1500",
                  color: Colors.red.shade200,
                  icon: const Icon(
                    Icons.upload,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      // Transactions
      Container(
          padding: const EdgeInsets.all(12),
          child:
              const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Recent Transactions"),
            SizedBox(
              height: 8,
            ),
            TransactionCard(
                icon: Icon(
                  Icons.upload,
                  color: Colors.red,
                ),
                title: "Food Plus",
                subtitle: "Food",
                day: "Today",
                amount: "Ksh 500"),
          ]))
    ]);
  }
}
