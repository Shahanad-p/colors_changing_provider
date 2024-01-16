import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_colors_list/controller/controller.dart';
import 'package:provider_colors_list/view/home.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ColorsListProvider(),
      child: const MaterialApp(
        home: HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
