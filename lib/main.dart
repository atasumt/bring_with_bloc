import 'package:brinch_with_bloc/core/theme/light_theme.dart';
import 'package:brinch_with_bloc/core/utils/routes.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'AppNation',
      debugShowCheckedModeBanner: false,
      routeInformationParser: routerSettings.routeInformationParser,
      routeInformationProvider: routerSettings.routeInformationProvider,
      routerDelegate: routerSettings.routerDelegate,
      builder: (context, widget) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: Theme(
              data: lightTheme(
                context,
              ),
              child: Overlay(initialEntries: [
                OverlayEntry(
                    builder: (context) => GestureDetector(
                        onTap: () {
                          WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
                        },
                        child: widget!))
              ])),
        );
      },
    );
  }
}
