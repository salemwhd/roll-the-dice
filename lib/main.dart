import 'package:flutter/material.dart';
import 'gradiant_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('my app'),
          backgroundColor: const Color.fromARGB(255, 163, 22, 22),
        ),
        body: GradiantContainer(colors: const [
          Color.fromARGB(255, 163, 22, 22),
          Color.fromARGB(255, 255, 0, 0),
        ]),
      ),
    ),
  );
}
