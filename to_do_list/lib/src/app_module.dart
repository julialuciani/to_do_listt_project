import 'package:flutter_modular/flutter_modular.dart';
import 'package:to_do_list/src/configuration/configuration_page.dart';
import 'package:to_do_list/src/home/home_module.dart';

class AppModule extends Module {
  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
        ChildRoute(
          '/config',
          child: (context, args) => const ConfigurationPage(),
        ),
      ];
}
