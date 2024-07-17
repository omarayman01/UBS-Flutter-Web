import 'package:get_it/get_it.dart';
import 'package:ubs/view_model/services/navigation_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
}
