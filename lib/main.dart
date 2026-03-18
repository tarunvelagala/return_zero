import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:return_zero/app/return_zero.dart';

void main() {
  // Ensure Flutter is initialized before calling SystemChrome
  WidgetsFlutterBinding.ensureInitialized();

  // TODO: Consider making this a user setting in the future
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  runApp(const ReturnZero());
}
