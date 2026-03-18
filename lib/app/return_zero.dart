import 'package:flutter/material.dart';

class ReturnZero extends StatelessWidget {
  const ReturnZero({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Return Zero',
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const Scaffold(body: Center(child: Text('Return Zero'))),
    );
  }
}
