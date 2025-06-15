import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjection(String environment) async {
  // Initialize injectable with the generated configuration
  await getIt.init(environment: environment);
}
