import 'package:flutter/material.dart';

import 'app/dependencies.dart' as di;
import 'app/router.dart';

void main() {
  di.init();

  runApp(
    MaterialApp(
      title: 'EzCook App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
      initialRoute: '/',
      onGenerateRoute: createRoute,
    ),
  );
}
