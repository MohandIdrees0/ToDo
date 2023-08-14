import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/Data/Task.dart';
import '../Data/TasksSet.dart';
class buttomModal extends StatelessWidget {
  const buttomModal({super.key});
  @override
  Widget build(BuildContext context) {
    String feildValue="";
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(left: 50,right: 50),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Column(
          children: [
            Text('Add Task',style: TextStyle(fontSize: 20),),
            TextField(
              onChanged: (value) {
                feildValue = value;
              },
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            TextButton(
                onPressed: () {
                  Provider.of<tasks>(context,listen: false).addelement(feildValue);
                  Navigator.pop(context);},
                child: Text(
                  'ADD',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                ))
          ],
        ),
      ),
    );
  }
}
