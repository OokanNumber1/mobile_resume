import 'package:flutter/material.dart';
import 'package:mobile_resume/pages/resume_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      title: 'Resume App',
      home: const ResumePage(),
    );
  }
}
