import 'package:get_it/get_it.dart';
import 'package:naturesave/core/constans/app/local_datas.dart';

import 'app/global_variables.dart';

GetIt locator = GetIt.I;

void setupLocator() async {
  locator.registerLazySingleton(() => GlobalVariables());
  locator.registerLazySingleton(() => LocalDatas());
}
