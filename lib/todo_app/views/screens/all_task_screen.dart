import 'package:flutter/cupertino.dart';
import '../../data/dummy_data.dart';
import '../widgets/task_widget.dart';

class AllTasksScreen extends StatelessWidget {
  Function function;
  AllTasksScreen(this.function);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
        itemBuilder: (context , index){
        return TaskWidget(
            tasks[index],
        function);
        }
    );
  }
}
