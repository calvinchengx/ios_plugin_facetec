
import 'dart:async';

import 'package:flutter/services.dart';

class FacetecTestingPlugin {
  static const MethodChannel _channel = MethodChannel('facetec_testing_plugin');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
