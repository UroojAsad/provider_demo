import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/home.dart';
import 'List_provider.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NumberListProvider())
      ],
      child: MaterialApp(
        home:Home(),
      ),
    );
  }
}

