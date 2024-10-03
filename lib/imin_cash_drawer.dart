// You have generated a new plugin project without
// specifying the `--platforms` flag. A plugin project supports no platforms is generated.
// To add platforms, run `flutter create -t plugin --platforms <platforms> .` under the same
// directory. You can also find a detailed instruction on how to add platforms in the `pubspec.yaml` at https://flutter.dev/docs/development/packages-and-plugins/developing-packages#plugin-platforms.

import 'dart:async';

import 'package:flutter/services.dart';
import 'package:imin_cash_drawer/utils/constant.dart';

class IminCashDrawer {
  static const MethodChannel _channel = MethodChannel(Constants.methodChannel);

  static Future<dynamic> get drawerStatus async {
    return await _channel.invokeMethod(Constants.drawerStatus);
  }

  static Future<dynamic> get openDrawer {
    return _channel.invokeMethod(Constants.openDrawer);
  }
}
