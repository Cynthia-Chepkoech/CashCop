import 'package:flutter/material.dart';

class Addscreen extends StatefulWidget {
  const Addscreen({super.key});

  @override
  State<Addscreen> createState() => _AddscreenState();
}

class _AddscreenState extends State<Addscreen> {
  List<String> categories = [
    "Shopping",
    "Travel",
    "Entertainment",
    "Groceries"
  ];

  String? selectedItem = "Shopping";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Record"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.purple.shade300),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Income",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("Expense",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.grey.shade200),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.purple.shade50,
                          borderRadius: BorderRadius.circular(12)),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Enter Amount",
                            labelText: "Enter Amount",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12))),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.purple.shade50,
                          borderRadius: BorderRadius.circular(12)),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Enter Amount",
                            labelText: "Enter Amount",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12))),
                      ),
                    ),
                    DropdownButton<String>(
                        value: selectedItem,
                        items: categories
                            .map(
                                (e) => DropdownMenuItem<String>(child: Text(e),value:e))
                            .toList(),
                        onChanged: (e) {
                          setState(() {
                            selectedItem = e;
                          });
                        }),
                    MaterialButton(
                      onPressed: () {},
                      child: Text("Add Record"),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
