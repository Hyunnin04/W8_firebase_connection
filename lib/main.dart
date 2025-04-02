import 'package:flutter/material.dart';
import 'package:flutter_hw2/provider/pancakes%20_provider.dart';
import 'package:flutter_hw2/repository/pancakes%20_firebase_repository.dart';
import 'package:flutter_hw2/repository/pancakes%20_repository.dart';
import 'package:flutter_hw2/screens/pancakes_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  // 1 - Create repository
  final PancakeRepository pancakeRepository = FirebasePancakeRepository();

  // 2-  Run app
  runApp(
    ChangeNotifierProvider(
      create: (context) => Pancakeprovider(pancakeRepository),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: const App()),
    ),
  );
}
