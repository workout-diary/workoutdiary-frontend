import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_diary/app/ui/report_page/view.dart';

void main() {
  runApp(WorkoutDiary());
}

class WorkoutDiary extends StatelessWidget {
  const WorkoutDiary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: ReportPage(),
    );
  }
}
