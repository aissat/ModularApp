import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_smart_app/routers/app_routes.dart';

import '../module/home/home_controller.dart';
import '../module/home/home_page.dart';
import '../module/settings/settings_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton((i) => HomeController()),
      ];
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Routes.home,
          child: (context, args) => const HomePage(title: 'Home'),
        ),
        ChildRoute(
          Routes.settings,
          child: (context, args) => const SettingsPage(),
        ),
      ];
}
