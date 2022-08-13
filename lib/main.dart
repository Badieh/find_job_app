import 'package:bloc/bloc.dart';
import 'package:find_job/modules/splash_screen.dart';
import 'package:find_job/shared/components/constants.dart';
import 'package:flutter/material.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Find Job App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(color: Colors.white,elevation: 0),
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
