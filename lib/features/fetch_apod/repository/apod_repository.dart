import 'package:my_app_isims/features/fetch_apod/data/apod_data.dart';
import 'package:my_app_isims/features/fetch_apod/models/apod_model.dart';

class ApodRepository {
  List<ApodModel> fetchApod() {
    return apodData;
  }
}
