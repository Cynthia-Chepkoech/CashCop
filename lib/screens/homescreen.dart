import 'package:cashcop/components/myCard.dart';
import 'package:cashcop/components/transactioncard.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  final String? name;
  const Homescreen({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.purple.shade200,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            )),
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
                Expanded(
                  child: MyCard(
                    title: "Income",
                    amount: "Ksh 15000",
                    color: Colors.green.shade200,
                    icon: const Icon(Icons.download, color: Colors.green),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: MyCard(
                    title: "Expense",
                    amount: "Ksh 1500",
                    color: Colors.red.shade200,
                    icon: const Icon(
                      Icons.upload,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      // Transactions
      Expanded(
        child: Container(
            padding: const EdgeInsets.all(12),
            child: SingleChildScrollView(
              child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Recent Transactions"),
                        Text("View All"),
                      ],
                    ),
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
                    SizedBox(
                      height: 8,
                    ),
                    TransactionCard(
                        icon: Icon(
                          Icons.upload,
                          color: Colors.red,
                        ),
                        title: "Shopping",
                        subtitle: "Groceries",
                        day: "Today",
                        amount: "Ksh 250"),
                    SizedBox(
                      height: 8,
                    ),
                    TransactionCard(
                        icon: Icon(
                          Icons.upload,
                          color: Colors.red,
                        ),
                        title: "Entertainment",
                        subtitle: "Swimming",
                        day: "Today",
                        amount: "Ksh 250"),
                    SizedBox(
                      height: 8,
                    ),
                    TransactionCard(
                        icon: Icon(
                          Icons.upload,
                          color: Colors.red,
                        ),
                        title: "Travel",
                        subtitle: "School",
                        day: "Today",
                        amount: "Ksh 250"),
                    SizedBox(
                      height: 8,
                    ),
                  ]),
            )),
      )
    ]);
  }
}
