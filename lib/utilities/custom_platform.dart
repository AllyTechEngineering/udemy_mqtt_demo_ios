import 'dart:io';

import 'package:flutter/widgets.dart';

class CustomPlatform {
  double getPlatformAdjustedFontSize(double baseSize) {
    if (Platform.isIOS) {
      debugPrint('Platform is iOS');
      return baseSize + 2.0; // Increase for iOS
    } else if (Platform.isMacOS) {
      debugPrint('Platform is macOS');
      return baseSize + 5.0; // Slight increase for macOS
    } else if (Platform.isAndroid) {
      debugPrint('Platform is Android');
      return baseSize; // Use the default for Android
    } else if (Platform.isWindows) {
      debugPrint('Platform is Windows');
      return baseSize - 0.0; // Slight decrease for Windows
    } else if (Platform.isLinux) {
      debugPrint('Platform is Linux');
      return baseSize - 0.0; // Slight decrease for Linux
    }
    return baseSize;
  }

  double getPlatformAdjustedHeight(double baseHeight) {
  if (Platform.isIOS) {
    return baseHeight + 10.0; // Increase for iOS
  } else if (Platform.isMacOS) {
    return baseHeight - 10.0; // Increase for macOS
  } else if (Platform.isAndroid) {
    return baseHeight; // Default for Android
  } else if (Platform.isWindows) {
    return baseHeight - 5.0; // Slight decrease for Windows
  } else if (Platform.isLinux) {
    return baseHeight - 5.0; // Slight decrease for Linux
  }
  return baseHeight;
}
}
