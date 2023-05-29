import 'package:injectable/injectable.dart';

import '../../presentation/routes/app_router.dart';

@module
abstract class AutoRouteDi {
  @lazySingleton
  AppRouter get appRouter => AppRouter();
}
