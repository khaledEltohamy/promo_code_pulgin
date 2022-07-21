import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'promocode_field_animate_platform_interface.dart';

/// An implementation of [PromocodeFieldAnimatePlatform] that uses method channels.
class MethodChannelPromocodeFieldAnimate extends PromocodeFieldAnimatePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('promocode_field_animate');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
