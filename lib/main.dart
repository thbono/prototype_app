import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prototype_app/resource/texts.dart';

import 'navigator/router.gr.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Texts.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: ExtendedNavigator.builder<Router>(
        router: Router(),
        builder: (context, widget) => Theme(
          data: ThemeData(
            textTheme: GoogleFonts.nunitoTextTheme(Theme.of(context).textTheme),
          ),
          child: widget,
        ),
      ),
    );
  }
}
