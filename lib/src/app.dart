import 'package:flutter/material.dart';
import 'package:flutter_zero_to_hero/src/shared/routes.dart';
import 'package:flutter_zero_to_hero/src/widgets/molecules/firstScreen.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bhinneka',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: FirstScreen(),
      onGenerateRoute: RoutesBmd.generateRoute,
    );
  }
}
