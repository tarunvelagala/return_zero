import 'package:flutter/material.dart';
import 'package:return_zero/app/return_zero.dart';
import 'package:flutter/services.dart';

void main() async {
  // Ensure Flutter is initialized before calling SystemChrome
  WidgetsFlutterBinding.ensureInitialized();
  
  // Hide the status bar globally
  // TODO: Consider making this a user setting in the future
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(const ReturnZero());
}