import 'package:flutter/material.dart';

import '../../models/task_model.dart';

class TaskWidget extends StatelessWidget {

  TaskModel taskModel;
  Function function;
  TaskWidget(this.taskModel , this.function);
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(taskModel.name),
      value: taskModel.isComplete,
      onChanged: (value){
       function(taskModel);
        taskModel.isComplete = ! taskModel.isComplete;
    function(taskModel);
      },
    );
  }
}
