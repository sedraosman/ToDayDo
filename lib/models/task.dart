class Task {

  final String name;
  bool ischecked;

  Task({required this.name, this.ischecked= false});

  void change(){
    ischecked = !ischecked;
  }
}
