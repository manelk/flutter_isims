import 'package:get/get.dart';
import 'package:my_app_isims/features/fetch_apod/models/apod_model.dart';
import 'package:my_app_isims/features/fetch_apod/repository/apod_repository.dart';

class ApodController extends GetxController {
  var apods = <ApodModel>[].obs;
  var isLoading = false.obs;
  var error = false.obs;

  void fetchApods() {
    isLoading.value = true;

    try {
      isLoading.value = false;
      apods.value = ApodRepository().fetchApod();
    } catch (e) {
      error.value = true;
    }
  }
}
