import 'dart:io';

enum PlatformType {
  mobile,
  desktop,
}

PlatformType getCurrentPlatform() {
  if (Platform.isAndroid || Platform.isIOS) {
    return PlatformType.desktop;
  } else {
    return PlatformType.mobile;
  }
}