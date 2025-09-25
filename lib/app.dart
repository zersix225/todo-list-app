import 'package:flutter/material.dart';
import 'package:todo_list/features/screens/home.dart';
import 'package:todo_list/utils/theme/theme.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const HomeScreen(),
    );
  }
}