import 'package:flutter/material.dart';
import 'package:to_do/Data/TasksSet.dart';
import 'Screens/TaskScreen.dart';
import 'Widget/AppBar.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (BuildContext context)=>tasks(),
      child:MaterialApp(
        home: Scaffold(
            resizeToAvoidBottomInset:false,
          backgroundColor: Color(0xff2196f3),
          appBar: appBar(),
          body: TaskScreen(),
        ),
      ),
    );
  }
}

