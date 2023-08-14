import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/Data/Task.dart';

class Tile extends StatelessWidget {
  final Function onClick;
  final task mytask;
  Tile({required this.mytask, required this.onClick});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(mytask.taskName,
          style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w500,decoration: mytask.isDone?TextDecoration.lineThrough:null)),
      trailing: Checkbox(
        onChanged: (value) {
          print(mytask.isDone);
          onClick(value);
          print(mytask.isDone);
        },
        value: mytask.isDone,
      ),
    );
  }
}
