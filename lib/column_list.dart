import 'package:flutter/material.dart';
import 'package:rr_flutter4_1/app_env.dart';
import 'package:rr_flutter4_1/update_button.dart';

class ColumnList extends StatefulWidget {
  @override
  _ColumnListState createState() => _ColumnListState();
}

class _ColumnListState extends State<ColumnList> {
  ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column List'),
        centerTitle: true,
        backgroundColor: Colors.cyan[700],
        actions: [
          UpdateButton(
              state: this,
              icon: const Icon(Icons.delete),
              callback: () {
                (AppEnv.myList.length > 0)
                    ? AppEnv.myList.removeAt(AppEnv.myList.length - 1)
                    : null;
              }),
          UpdateButton(
              state: this,
              icon: const Icon(Icons.add),
              callback: () {
                AppEnv.myList.add(AppEnv.myList.length);
                try {
                  _scrollController.animateTo(
                    _scrollController.position.maxScrollExtent + 50,
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.ease,
                  );
                } catch (e) {}
              }),
        ],
      ),
      body: Center(
          child: AppEnv.myList.isEmpty
              ? const Text(
                  'Empty',
                  style: TextStyle(fontSize: 20),
                )
              : SingleChildScrollView(
                  controller: _scrollController,
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
