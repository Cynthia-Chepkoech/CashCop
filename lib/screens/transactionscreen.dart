import 'package:cashcop/components/transactioncard.dart';
import 'package:cashcop/components/chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.only(top: 32, left: 12, right: 12),
            decoration: BoxDecoration(
                color: Colors.purple.shade200,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12))),
            child: const Center(child: LineChartWidget()),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        const Expanded(
          flex: 1,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                TransactionCard(
                    icon: Icon(
                      Icons.upload,
                      color: Colors.red,
                    ),
                    title: "Food Plus",
                    subtitle: "Food",
                    day: "Today",
                    amount: "Ksh 500"),
                SizedBox(height: 12),
                TransactionCard(
                    icon: Icon(
                      Icons.upload,
                      color: Colors.red,
                    ),
                    title: "Food Plus",
                    subtitle: "Food",
                    day: "Today",
                    amount: "Ksh 500"),
                SizedBox(height: 12),
                TransactionCard(
                    icon: Icon(
                      Icons.upload,
                      color: Colors.red,
                    ),
                    title: "Food Plus",
                    subtitle: "Food",
                    day: "Today",
                    amount: "Ksh 500"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
