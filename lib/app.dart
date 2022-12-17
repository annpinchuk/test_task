import 'package:flutter/material.dart';

import 'package:test_task/features/color_generator/presentation/views/color_generator_page.dart';

/// App main widget
class App extends StatelessWidget {
  /// Constructor, declaring one optional parameter [key]
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test task',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ColorGeneratorPage(title: 'Color generator'),
    );
  }
}
