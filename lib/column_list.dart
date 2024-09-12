import 'package:flutter/material.dart';

class ColumnList extends StatelessWidget {
  ColumnList({super.key});

  int index = 0;
  final myList =
      List<int>.generate(100, (index) => index * index, growable: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column List'),
        centerTitle: true,
        backgroundColor: Colors.cyan[700],
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              icon: const Icon(Icons.arrow_back))
        ],
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < myList.length; i++)
              Text('Item ${myList[i]}', style: const TextStyle(fontSize: 20)),
          ],
        ),
      )),
    );
  }
}
