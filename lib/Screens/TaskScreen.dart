import 'package:flutter/material.dart';
import 'package:to_do/Widget/TaskListWidget.dart';
import '../Data/TasksSet.dart';
import '../Widget/ListTile.dart';
import '../Widget/buttomModal.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});
  @override
  State<TaskScreen> createState() => _TaskScreenState();
}
class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.only(left: 15, top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 25,
                  child: Icon(
                    Icons.list,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Todoey',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  '${Provider.of<tasks>(context).elementCount()} Task',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )
              ],
            ),
          ),
        ),
        TaskList()
      ],
    ));
  }
}
