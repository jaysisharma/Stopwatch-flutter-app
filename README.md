# Stopwatch Flutter App

## Overview

This Flutter project implements a simple stopwatch functionality, allowing users to start and stop a timer displayed on the screen.

## `mounted` Property

In Flutter, the `mounted` property checks if a stateful widget is currently rendered in the widget tree. It returns `true` if the widget is active and visible, otherwise `false`.

### Example Usage

```dart
if (mounted) {
  // Perform actions only if the widget is still mounted or any function
  setState(() {
    // Update state or perform UI-related tasks
  });
}
