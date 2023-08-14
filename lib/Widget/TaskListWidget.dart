import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Data/TasksSet.dart';
import 'ListTile.dart';
import 'buttomModal.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15), topLeft: Radius.circular(15)),
            color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: Provider.of<tasks>(context).elementCount(),
                itemBuilder: (context, index) {
                  final task = Provider.of<tasks>(context).taskSet()[index];
                  return Tile(
                    mytask: task,
                    onClick: (bool value) {
                      setState(() {
                        task.isDone = value;
                      });
                    },
                  );
                },
              ),
            ),
            buttomRow()
          ],
        ),
      ),
    );
  }

  Row buttomRow() {
    return Row(children: [
      Container(
        padding: EdgeInsets.only(left: 140, right: 100),
        child: TextButton(
          onPressed: () {
            Provider.of<tasks>(context, listen: false).delete();
          },
          child: Text(
            'Done',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          showModalBottomSheet(
              context: context, builder: (context) => buttomModal());
        },
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.lightBlueAccent, shape: BoxShape.circle),
          child: Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
    ]);
  }
}
