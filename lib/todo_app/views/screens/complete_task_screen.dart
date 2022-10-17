import 'package:flutter/cupertino.dart';
import '../../data/dummy_data.dart';
import '../widgets/task_widget.dart';

class CompleteTasksScreen extends StatelessWidget {

Function function;
  CompleteTasksScreen(this.function);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.where((element) => element.isComplete).length,
        itemBuilder: (context , int index){
          return TaskWidget(
              tasks.where((element) => element.isComplete).toList()[index],
          function
          );
        }
    );
  }
}
