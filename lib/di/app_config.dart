import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'app_config.config.dart';

final locator = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> init() async {
  // other initialization logic



  await locator.init();
}
