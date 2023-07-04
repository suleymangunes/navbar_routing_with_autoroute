import 'package:get_it/get_it.dart';
import 'package:navbar_routing_with_autoroute/router/router.gr.dart';

final GetIt sl = GetIt.asNewInstance();

void setupDependencies() {
  sl.registerLazySingleton<AppRouter>(() => AppRouter());
}
