import 'package:get_it/get_it.dart';
import 'injection.config.dart';
import 'package:injectable/injectable.dart';

final getit = GetIt.asNewInstance();

@InjectableInit()
void configureInjection(String env) {
  getit.init(environment: env);
}
