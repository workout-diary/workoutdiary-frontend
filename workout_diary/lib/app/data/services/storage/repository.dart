/* 
  Entity를 분리 

*/

import 'package:workout_diary/app/data/providers/store_workout.dart';

import '../../models/workout.dart';

class WorkoutRepository {
  WorkoutProvider workoutProvier;
  WorkoutRepository({required this.workoutProvier});

  List<Workout> readWorkouts() => workoutProvier.readWorkouts();
  void writeTasks(List<Workout> daily_workout) =>
      workoutProvier.writeWorkouts(daily_workout);
}
