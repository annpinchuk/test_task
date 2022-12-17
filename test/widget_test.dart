import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_task/features/color_generator/presentation/views/color_generator_page.dart';

void main() {
  testWidgets('Color Generator Page has a title and a welcome message',
      (tester) async {
    await tester.pumpWidget(
      const MediaQuery(
        data: MediaQueryData(),
        child: MaterialApp(
          home: ColorGeneratorPage(title: 'Color generator'),
        ),
      ),
    );

    // Create the Finders.
    final titleFinder = find.text('Color generator');
    final welcomeMessageFinder = find.text('Hey there');

    expect(titleFinder, findsOneWidget);
    expect(welcomeMessageFinder, findsOneWidget);
  });

  // 1. Save the initial background color
  // 2. Tap on the screen
  // 3. rebuild the widget after the state has changed
  // 4. Verify that the background color is not the same as the initial one
  testWidgets('Tap on the screen changes background color', (tester) async {
    await tester.pumpWidget(
      const MediaQuery(
        data: MediaQueryData(),
        child: MaterialApp(
          home: ColorGeneratorPage(title: 'Color generator'),
        ),
      ),
    );

    final Scaffold initWidget = tester.widget(find.byType(Scaffold));

    // Save the initial background color
    final Color? initialBackgroundColor = initWidget.backgroundColor;

    // Tap on the screen
    await tester.tap(find.byType(Scaffold));

    // Rebuild the widget after the state has changed.
    await tester.pump();

    final Scaffold widgetAfterTap = tester.widget(find.byType(Scaffold));

    // Expect to find the item on screen.
    expect(widgetAfterTap.backgroundColor != initialBackgroundColor, true);
  });
}
