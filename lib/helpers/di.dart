//import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';

final locator = GetIt.instance;
final appData = locator.get<GetStorage>();

void diSetup() {
  // locator.registerLazySingleton(() => FirebaseMessaging.instance);
  locator.registerSingleton<GetStorage>(GetStorage());
  // locator.registerSingleton<WebViewController>(WebViewController());
}
