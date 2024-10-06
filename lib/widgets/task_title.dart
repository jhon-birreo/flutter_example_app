import 'package:flutter/material.dart';
import 'package:flutter_example_app/data/models/models.dart';
import 'package:flutter_example_app/utils/utils.dart';
import 'package:gap/gap.dart';

class TaskTitle extends StatelessWidget {
  const TaskTitle({super.key, required this.task, this.onCompleted});
  final Task task;
  final Function(bool?)? onCompleted;

  @override
  Widget build(BuildContext context) {
    final style = context.textTheme;
    final double iconOpacity = task.isCompleted ? 0.3 : 0.5;
    final backgroundColor = task.isCompleted ? 0.1 : 0.3;
    final textDecoration =
        task.isCompleted ? TextDecoration.lineThrough : TextDecoration.none;
    final fontWeight = task.isCompleted ? FontWeight.normal : FontWeight.bold;
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 10, bottom: 10),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(9.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: task.category.color.withOpacity(backgroundColor),
              border: Border.all(
                color: task.category.color.withOpacity(iconOpacity),
                width: 2,
              ),
            ),
            child: Center(
              child: Icon(
                task.category.icon,
                color: task.category.color.withOpacity(iconOpacity),
              ),
            ),
          ),
          const Gap(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task.title,
                  style: style.bodyMedium?.copyWith(
                    decoration: textDecoration,
                    fontSize: 20,
                    fontWeight: fontWeight,
                  ),
                ),
                Text(
                  task.time,
                  style: style.bodyMedium?.copyWith(
                    decoration: textDecoration,
                  ),
                ),
              ],
            ),
          ),
          Checkbox(value: task.isCompleted, onChanged: onCompleted),
        ],
      ),
    );
  }
}
