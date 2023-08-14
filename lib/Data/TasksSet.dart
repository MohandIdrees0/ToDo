import 'package:flutter/material.dart';
import 'Task.dart';
class tasks extends ChangeNotifier{
  List<task> _set=[];
  int elementCount(){
    return _set.length;
  }
  void addelement(String x){
    _set.add(task( taskName:x,));
    notifyListeners();
  }
  List taskSet(){
    return List.from(_set);
  }
  void  delete(){
    for(var x in List.from(_set)){
      if(x.isDone==true)
        _set.remove(x);
    }
    notifyListeners();
  }
}