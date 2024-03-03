import 'package:flutter/material.dart';
import '../components/cores.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cores aleatórias'),
          leading: const Icon(Icons.account_box),
        ),
        body: ListView(
          children: List.generate(10, (index) => const Cores()),
        ),
      ),
    );
  }
}
