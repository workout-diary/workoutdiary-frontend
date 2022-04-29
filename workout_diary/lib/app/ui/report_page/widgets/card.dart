import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workout_diary/app/core/utils/extension.dart';

class TaskCard extends StatelessWidget {
  TaskCard({Key? key}) : super(key: key);
  var squareWidth = Get.width - 12.0.wp;
  var squareHeight = Get.width - 12.0.wp;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: squareWidth,
      margin: EdgeInsets.all(3.0.wp),
      color: Colors.black,
    );
  }
}
