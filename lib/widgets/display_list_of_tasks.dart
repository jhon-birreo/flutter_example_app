import 'package:flutter/material.dart';
import 'package:flutter_example_app/data/data.dart';
import 'package:flutter_example_app/utils/utils.dart';
import 'package:flutter_example_app/widgets/widgets.dart';

class DisplayListOfTasks extends StatelessWidget {
  const DisplayListOfTasks(
      {super.key, required this.tasks, this.isCompletedTasks = false});

  final List<Task> tasks;
  final bool isCompletedTasks;

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;
    final height =
        isCompletedTasks ? deviceSize.height * 0.25 : deviceSize.height * 0.3;
    final emptyTasksMessage =
        isCompletedTasks ? 'There is no completed tasks' : 'There is no tasks';
    return CommonContainer(
      height: height,
      child: tasks.isEmpty
          ? Center(
              child: Container(
                  child: Text(emptyTasksMessage,
                      style: context.textTheme.headlineSmall)),
            )
          : ListView.separated(
              shrinkWrap: true,
              itemCount: tasks.length,
              padding: EdgeInsets.zero,
              itemBuilder: (BuildContext context, int index) {
                final task = tasks[index];
                return TaskTitle(task: task);
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  thickness: 1.5,
                );
              },
            ),
    );
  }
}
