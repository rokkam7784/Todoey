import 'package:flutter/material.dart';
import 'package:todoy/Widgets/tasksTile.dart';
import 'package:provider/provider.dart';
import 'package:todoy/taskData.dart';

import '../task.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      //here we used Consumer inorder to avoid writing Provider.of<TaskData>(context)
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TasksTile(
              taskTile: Provider.of<TaskData>(context).tasks[index].name,
              isChecked: task.isDone,
              checkBoxCallBack: (checkBoxState) {
                // setState(() {
                //   taskData.tasks[index].toggleDone();
                // });
                taskData.updateTask(task);
              },
              longPressCallback: () {
                taskData.delteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
