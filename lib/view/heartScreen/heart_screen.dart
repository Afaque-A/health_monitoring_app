
import 'package:flutter/material.dart';

class HeartScreen extends StatelessWidget {
  const HeartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Heart'),
      ),
      body: const Center(
        child: Text('Heart Screen'),
      ),
    );
  }
}