class task{
  final String taskName;
  bool isDone;
  task({required this.taskName,this.isDone=false});
  void done(bool done){
    this.isDone=done;
  }


}