import 'package:flutter/material.dart';
import 'package:flutter_example_app/data/models/models.dart';
import 'package:flutter_example_app/utils/utils.dart';
import 'package:flutter_example_app/widgets/widgets.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color: colors.primary,
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DisplayWhiteText(
                          text: 'October 4, 2024',
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                      Gap(10),
                      DisplayWhiteText(
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
                    const DisplayListOfTasks(
                      tasks: [
                        Task(
                          title: 'Hacer ejercicios',
                          time: '08:00',
                          date: 'Set, 04',
                          note: 'note',
                          category: TaskCategory.shopping,
                          isCompleted: false,
                        ),
                        Task(
                          title: 'Fornicar',
                          time: '08:00',
                          date: 'Set, 04',
                          note: 'note',
                          category: TaskCategory.personal,
                          isCompleted: false,
                        ),
                        Task(
                          title: 'Comer',
                          time: '08:00',
                          date: 'Set, 04',
                          note: 'note',
                          category: TaskCategory.travel,
                          isCompleted: false,
                        )
                      ],
                    ),
                    const Gap(20),
                    Text(
                      'Completed',
                      style: context.textTheme.headlineMedium,
                    ),
                    const Gap(20),
                    const DisplayListOfTasks(
                      tasks: [
                        Task(
                          title: 'Trabajar',
                          time: '08:00',
                          date: 'Set, 04',
                          note: 'note',
                          category: TaskCategory.health,
                          isCompleted: true,
                        ),
                        Task(
                          title: 'Codear a full ',
                          time: '08:00',
                          date: 'Set, 04',
                          note: 'note',
                          category: TaskCategory.education,
                          isCompleted: true,
                        ),
                        Task(
                          title: 'Hacer , ejercicios, ejercicios,ejercicios',
                          time: '08:00',
                          date: 'Set, 04',
                          note: 'note',
                          category: TaskCategory.home,
                          isCompleted: true,
                        )
                      ],
                      isCompletedTasks: true,
                    ),
                    const Gap(20),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: DisplayWhiteText(text: 'Add New Task'),
                        ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
