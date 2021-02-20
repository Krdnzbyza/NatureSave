import 'package:get_it/get_it.dart';

import 'app/global_variables.dart';

GetIt locator = GetIt.I;

void setupLocator() async {
  locator.registerLazySingleton(() => GlobalVariables());
}
