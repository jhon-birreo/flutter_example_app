// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter_example_app/utils/utils.dart';

class Task extends Equatable {
  final int? id;
  final String title;
  final String note;
  final String time;
  final String date;
  final TaskCategory category;
  final bool isCompleted;
  const Task({
    this.id,
    required this.title,
    required this.time,
    required this.date,
    required this.note,
    required this.category,
    required this.isCompleted,
  });

  @override
  List<Object?> get props => [id, title, time, date, note, category, isCompleted];
}
