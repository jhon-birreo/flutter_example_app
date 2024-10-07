import 'package:flutter/material.dart';
import 'package:flutter_example_app/config/routes/router.dart';
import 'package:flutter_example_app/data/data.dart';
import 'package:flutter_example_app/providers/providers.dart';
import 'package:flutter_example_app/utils/utils.dart';
import 'package:flutter_example_app/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class HomeScreen extends ConsumerWidget {
  static HomeScreen builder(BuildContext context, GoRouterState state) =>
      const HomeScreen();
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;
    final taskState = ref.watch(taskProvider);
    final completedTasks = _completedTasks(taskState.tasks, ref);
    final uncompletedTasks = _uncompletedTasks(taskState.tasks, ref);
    final selectedDate = ref.watch(dateProvider);
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color: colors.primary,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () => Helpers.selectedDate(context, ref),
                        child: DisplayWhiteText(
                          text: DateFormat.yMMMd().format(selectedDate),
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const Gap(10),
                      const DisplayWhiteText(
                        text: 'My Todo List',
                        fontSize: 40,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: deviceSize.width,
                  color: Colors.white12,
                ),
              ),
            ],
          ),
          Positioned(
            top: 130,
            left: 0,
            right: 0,
            child: SafeArea(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    DisplayListOfTasks(
                      tasks: uncompletedTasks,
                    ),
                    const Gap(20),
                    Text(
                      'Completed',
                      style: context.textTheme.headlineMedium,
                    ),
                    const Gap(20),
                    DisplayListOfTasks(
                      tasks: completedTasks,
                      isCompletedTasks: true,
                    ),
                    const Gap(20),
                    ElevatedButton(
                      onPressed: () => context.push(RouteLocation.createTask),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: DisplayWhiteText(text: 'Add New Task'),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  List<Task> _completedTasks(List<Task> tasks, WidgetRef ref) {
    final selectedDate = ref.watch(dateProvider);
    return tasks.where((task) {
      final isTaskDay = Helpers.isTaskFromSelectedDate(task, selectedDate);
      return task.isCompleted && isTaskDay;
    }).toList();
  }

  List<Task> _uncompletedTasks(List<Task> tasks, WidgetRef ref) {
    final selectedDate = ref.watch(dateProvider);
    return tasks.where((task) {
      final isTaskDay = Helpers.isTaskFromSelectedDate(task, selectedDate);
      return !task.isCompleted && isTaskDay;
    }).toList();
  }


}
