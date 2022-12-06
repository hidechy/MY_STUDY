import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'hello_world_page.dart';

import 'decimal_to_binary_page.dart';

import 'word_count_page.dart';

import 'chat_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //
      home: ChatPage(),
      //
    );
  }
}
