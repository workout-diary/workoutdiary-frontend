import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:workout_diary/app/core/utils/keys.dart';

class StorageService extends GetxService {
  late GetStorage _box;

  Future<StorageService> init() async {
    _box = GetStorage();
    await _box.write(workoutKey, []); // 아직은 서버랑 통신을 안하므로 null로 저장함 (수정필)

    return this;
  }

  T read<T>(String key) {
    return _box.read(workoutKey);
  }

  void write(String key, dynamic value) async {
    await _box.write(key, value);
    await _box.save();
  }
}
