import 'package:flutter/material.dart';
import 'package:flutter_example_app/widgets/widgets.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class CreateTaskScreen extends StatelessWidget {
  static CreateTaskScreen builder(BuildContext context, GoRouterState state) =>
      const CreateTaskScreen();
  const CreateTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const DisplayWhiteText(text: 'Add New Task'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            const CommonTaskDetails(
              title: 'Title of the task',
              hintText: 'Enter the title of the task',
            ),
            const Gap(16),
            const SelectCategory(),
            const Gap(16),
            const SelectDateTime(),
            const Gap(16),
            const CommonTaskDetails(
              title: 'Note',
              hintText: 'Enter the note of the task',
              maxLines: 5,
            ),
            const Gap(40),
            ElevatedButton(
                onPressed: () {}, child: const DisplayWhiteText(text: 'Save'))
          ]),
        ),
      ),
    );
  }
}
