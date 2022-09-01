import 'package:flutter/material.dart';
import 'package:stepper_example/splashscreen.dart';

import 'homepage.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.red,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      initialRoute: 'homepage',
      routes: {
        'splashscreen': (context) => SplashScreen(),
        'homepage': (context) => HomePage(),
      },
    ),
  );
}
