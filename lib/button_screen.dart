import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Screen'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue.shade300,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Column List'),
              onPressed: () {
                Navigator.pushNamed(context, '/column_list');
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('ListView'),
              onPressed: () {
                Navigator.pushNamed(context, '/list_view');
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('ListView.separated'),
              onPressed: () {
                Navigator.pushNamed(context, '/list_view_separated');
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
