
import 'package:flutter_bloc_test/utils/snackbar_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupServiceLocator() {
  locator.registerLazySingleton(SnackbarService.new);
}
