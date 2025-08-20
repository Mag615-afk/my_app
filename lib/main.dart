import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_application_3/view/screens/main_screen.dart';
import 'package:flutter_application_3/view/counter_view.dart';
import 'package:flutter_application_3/viewmodel/counter_viewmodel.dart';
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterViewModel(), // Creamos nuestro ViewModel
      child: const MyApp(),
    ), // ChangeNotifierProvider
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ), // ThemeData
      home: MainScreen(), // La vista ahora puede acceder al ViewModel
    );
  }
}        