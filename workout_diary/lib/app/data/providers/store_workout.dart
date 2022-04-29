/*
  api 통신, db 접근
*/

import 'dart:convert';

import 'package:get/get.dart';
import 'package:workout_diary/app/core/utils/keys.dart';
import 'package:workout_diary/app/data/services/storage/services.dart';

import '../models/workout.dart';

class WorkoutProvider {
  StorageService storage = Get.find<StorageService>();

  List<Workout> readWorkouts() {
    var daily_workout = <Workout>[];

    jsonDecode(storage.read(workoutKey).toString())
        .forEach((e) => daily_workout.add(Workout.fromJson(e)));

    return daily_workout;
  }

  void writeWorkouts(List<Workout> daily_workout) {
    storage.write(workoutKey, jsonEncode(daily_workout));
  }
}
