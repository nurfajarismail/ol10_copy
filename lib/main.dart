import 'package:flutter/material.dart';
import 'package:ol10_copy/objectbox.g.dart';
import 'package:ol10_copy/presentation/pages/welcome_page.dart';
import 'package:ol10_copy/repository/object_box.dart';

late Store store;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  store = (await ObjecBox.create()).store;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomePage(),
    );
  }
}
