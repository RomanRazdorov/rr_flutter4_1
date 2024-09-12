import 'package:flutter/material.dart';

class ListViewSeparatedScreen extends StatelessWidget {
  ListViewSeparatedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView.separated'),
        ),
        body: Text('ListView.separated'),
      ),
    );
  }
}
