import 'package:flutter/material.dart';

class BlockQuestionsScreen extends StatelessWidget {
  final int blockId;

  const BlockQuestionsScreen({super.key, required this.blockId});

  @override
  Widget build(BuildContext context) {
    return _View();
  }
}

class _View extends StatelessWidget {
  const _View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Block Questions'), centerTitle: true),
      body: const Center(child: Text('Block Questions Screen')),
    );
  }
}
