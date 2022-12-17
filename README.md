# Color generator app

[![style: solid](https://img.shields.io/badge/style-solid-orange)](https://pub.dev/packages/solid_lints)

This is a simple app that generates a random color by tapping on any point on the screen and
displays the current random color in the background.

## How to use

- Download or clone this repo by using the link below:
  `git clone`
- Go to project root and execute the flutter pub get command in console to get the required
  dependencies:
  `flutter pub get`
- To run your app, connect your device or emulator and execute the `flutter run`  command in
  console.
- Tap on the screen to change the background color.

## Code

- Color generator logic is in the `lib/features/services/color_generator_service.dart`  file.
- Presentation of color generator is in
  the `lib/features/presentation/views/color_generator_page.dart`  file.
- Widget tests are in the `test/widget_test.dart`  file.