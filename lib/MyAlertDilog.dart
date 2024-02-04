import 'package:flutter/material.dart';

class MyAlertDilog extends StatefulWidget {
  const MyAlertDilog({super.key});

  @override
  State<MyAlertDilog> createState() => _MyAlertDilogState();
}

class _MyAlertDilogState extends State<MyAlertDilog> {
  myAlert() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 350.0,
            width: 150.0,
            child: AlertDialog(
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Yes",
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "No",
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )),
              ],
              backgroundColor: Colors.white,
              title: const Text("Warning !"),
              content: const Text("Do you want to delete"),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  myAlert();
                },
                child: const Text(
                  "Delete",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.green),
                ))
          ],
        ),
      ),
    );
  }
}
