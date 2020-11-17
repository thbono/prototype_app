import 'package:auto_route/auto_route_annotations.dart';
import 'package:prototype_app/screen/associated/associated_screen.dart';
import 'package:prototype_app/screen/register/register_screen.dart';

@MaterialAutoRouter(
    generateNavigationHelperExtension: true,
    routes: <AutoRoute>[
      MaterialRoute(page: AssociatedScreen, initial: true),
      MaterialRoute(page: RegisterScreen),
    ])
class $Router {}