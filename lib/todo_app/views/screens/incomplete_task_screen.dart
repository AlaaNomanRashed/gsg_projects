import 'package:flutter/cupertino.dart';
import '../../data/dummy_data.dart';
import '../widgets/task_widget.dart';

class IncompleteTasksScreen extends StatelessWidget {

  Function function;
  IncompleteTasksScreen(this.function);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.where((element) => !element.isComplete).length,
        itemBuilder: (context , index){
          return TaskWidget(
              tasks.where((element) => !element.isComplete).toList()[index],
          function
          );
        }
    );
  }
}
