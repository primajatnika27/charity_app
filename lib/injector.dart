import 'package:charity_app/injector.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(generateForDir: ['lib', 'test'], initializerName: 'init')
Future<void> configureDependencies({required String environment}) async {
  getIt.init(environment: environment);
}