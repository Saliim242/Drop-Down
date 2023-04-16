import 'package:flutter/material.dart';

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = "Abdiraxman";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              dropdownValue,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            DropdownButton<String>(
              // isExpanded: true,

              value: dropdownValue,
              iconSize: 30,
              elevation: 16,
              style: const TextStyle(
                color: Colors.deepPurple,
                fontSize: 18,
              ),
              onChanged: (value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                });
              },
              items: [
                DropdownMenuItem<String>(
                  value: "Abdiraxman",
                  child: Text("Abdiraxman"),
                ),
                DropdownMenuItem<String>(
                  value: "Dhaalle",
                  child: Text("Dhaalle"),
                ),
                DropdownMenuItem<String>(
                  value: "Istaw",
                  child: Text("Istaw"),
                ),
                DropdownMenuItem<String>(
                  value: "4A",
                  child: Text("4A"),
                ),
                DropdownMenuItem<String>(
                  value: "Aisha",
                  child: Text("Aish"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
