/*
  앱 내의 데이터를 json으로 변환 
 */
import 'package:equatable/equatable.dart';

class Workout extends Equatable {
  final String title;
  final int cnt_workout; // 운동 구성종목 갯수
  final String classification; // normal, drop ....
  final List<dynamic?> sets;
  const Workout({
    required this.title,
    required this.cnt_workout,
    required this.classification,
    required this.sets,
  });
  Workout copyWith({
    String? title,
    int? cnt_workout,
    String? classification,
    List<dynamic>? sets,
  }) =>
      Workout(
        title: title ?? this.title,
        cnt_workout: cnt_workout ?? this.cnt_workout,
        classification: classification ?? this.classification,
        sets: sets ?? this.sets,
      );
  factory Workout.fromJson(Map<String, dynamic> json) => Workout(
      title: json['workout_title'],
      cnt_workout: json['cnt_workout'],
      classification: json['classification'],
      sets: json['sets']);

  Map<String, dynamic> toJson() => {
        "title": title,
        "cnt_workout": cnt_workout,
        "classification": classification,
        "sets": sets,
      };
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
