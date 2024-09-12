import 'package:flutter/material.dart';
import 'package:rr_flutter4_1/app_env.dart';
import 'package:rr_flutter4_1/remove_button.dart';

class ColumnList extends StatelessWidget {
  ColumnList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column List'),
        centerTitle: true,
        backgroundColor: Colors.cyan[700],
        actions: [],
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < AppEnv.myList.length; i++)
              Text('Item ${AppEnv.myList[i]}',
                  style: const TextStyle(fontSize: 20)),
          ],
        ),
      )),
    );
  }
}
