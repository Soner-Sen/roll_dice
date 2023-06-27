import 'package:flutter/material.dart';

import 'package:rollingdice/container_gradient.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ContainerGradient.blue(),
      ),
    );
  }
}
