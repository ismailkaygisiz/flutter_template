import 'package:flutter_template/core/interceptors/http_client.dart';
import 'package:flutter_template/core/services/storage_service.dart';
import 'package:get/get.dart';

class CoreModule {
  static void load() {
    Get.put(HttpClient());
    Get.put(StorageService());
  }
}
