import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app_test_task/router.dart';


class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final AppRouter _router = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return BlocProvider(
      blocs: [],
      dependencies: [],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: _router.onGenerateRoute,
      ),
    );
  }
}
