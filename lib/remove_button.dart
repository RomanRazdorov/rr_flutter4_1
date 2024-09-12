import 'package:flutter/material.dart';
import 'package:rr_flutter4_1/app_env.dart';

class UpdateButton extends StatelessWidget {
  UpdateButton(
      {super.key,
      required this.state,
      required this.callback,
      required this.icon});

  Icon icon;
  Function callback;
  State state;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        // AppEnv.myList.removeAt(AppEnv.myList.length - 1);
        // state.setState(() {});
        callback();
        state.setState(() {});
      },
      icon: icon,
    );
  }
}
