import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final getit = GetIt.asNewInstance();

@InjectableInit()
void configureInjection(String env) {
  getit.init(environment: env);
}
