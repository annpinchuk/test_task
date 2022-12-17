import 'package:flutter/material.dart';

import 'package:test_task/features/color_generator/services/color_generator_service.dart';

/// Widget, displaying color generator
class ColorGeneratorPage extends StatefulWidget {
  /// The title of the page
  final String title;

  /// Constructor, declaring two optional parameters [key], [title]
  const ColorGeneratorPage({
    super.key,
    required this.title,
  });

  @override
  State<ColorGeneratorPage> createState() => _ColorGeneratorPageState();
}

class _ColorGeneratorPageState extends State<ColorGeneratorPage> {
  /// Initialize ColorGeneratorService
  final ColorGeneratorService colorGeneratorService = ColorGeneratorService();

  Color backgroundColor = Colors.white; // Initial background color

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          backgroundColor = colorGeneratorService.generateRandomColor();
        });
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        backgroundColor: backgroundColor,
        body: Center(
          child: Container(
            color: Colors.white,
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Hey there',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
