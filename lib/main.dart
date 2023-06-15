import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:marketplace_animation_app/data/repository/home_repository.dart';
import 'package:marketplace_animation_app/home_page.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  HomeRepository.registerAdapters();
  await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
