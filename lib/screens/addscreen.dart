import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Addscreen extends StatefulWidget {
  const Addscreen({super.key});

  @override
  State<Addscreen> createState() => _AddscreenState();
}

class _AddscreenState extends State<Addscreen> {
  // Intl.defaultLocale = 'pt_BR';

  List<String> categories = [
    "Shopping",
    "Travel",
    "Entertainment",
    "Groceries"
  ];

  String? selectedItem = "Shopping";
  TextEditingController dateController = TextEditingController();

  // Widget showDatePicker(){
  //   return sh
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Record"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(color: Colors.grey.shade200),
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
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "Enter Amount",
                            labelText: "Enter Amount",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0.6,
                                    color: Colors.purpleAccent.shade100),
                                borderRadius: BorderRadius.circular(12))),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              width: 0.7, color: Colors.purpleAccent.shade100)),
                      child: DropdownButton<String>(
                          isExpanded: true,
                          underline: const SizedBox(),
                          value: selectedItem,
                          items: categories
                              .map((e) => DropdownMenuItem<String>(
                                  child: Text(e), value: e))
                              .toList(),
                          onChanged: (e) {
                            setState(() {
                              selectedItem = e;
                            });
                          }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple.shade50,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            width: 0.7, color: Colors.purpleAccent.shade100),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Enter Notes",
                            labelText: "Notes",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0.6,
                                    color: Colors.purpleAccent.shade100),
                                borderRadius: BorderRadius.circular(12))),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      // padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.purple.shade50,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        controller: dateController,
                        decoration: InputDecoration(
                            labelText: "Select Date",
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.calendar_month_outlined),
                              onPressed: () async {
                                DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    firstDate: DateTime.now(),
                                    currentDate: DateTime.now(),
                                    lastDate: DateTime(2100));

                                if (pickedDate != null) {
                                  String formattedDate =
                                      DateFormat('yyyy-MM-dd')
                                          .format(pickedDate);
                                  setState(() {
                                    dateController.text = formattedDate;
                                  });
                                }
                              },
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0.6,
                                    color: Colors.purpleAccent.shade100),
                                borderRadius: BorderRadius.circular(12))),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      color: Colors.deepPurple,
                      height: 48,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      onPressed: () {},
                      child: Text("Add Record",
                          style: TextStyle(color: Colors.white)),
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
