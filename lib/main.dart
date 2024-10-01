import 'package:flutter/material.dart';
import 'package:rr_flutter4_1/button_screen.dart';
import 'package:rr_flutter4_1/column_list.dart';
import 'package:rr_flutter4_1/listview_separated.dart';
import 'package:rr_flutter4_1/listview.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => ButtonScreen(),
        '/column_list': (context) => ColumnList(),
        '/list_view': (context) => ListViewScreen(),
        '/list_view_separated': (context) => ListViewSeparatedScreen(),
      },
    );
  }
}
