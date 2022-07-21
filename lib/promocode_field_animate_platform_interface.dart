import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'promocode_field_animate_method_channel.dart';

abstract class PromocodeFieldAnimatePlatform extends PlatformInterface {
  /// Constructs a PromocodeFieldAnimatePlatform.
  PromocodeFieldAnimatePlatform() : super(token: _token);

  static final Object _token = Object();

  static PromocodeFieldAnimatePlatform _instance = MethodChannelPromocodeFieldAnimate();

  /// The default instance of [PromocodeFieldAnimatePlatform] to use.
  ///
  /// Defaults to [MethodChannelPromocodeFieldAnimate].
  static PromocodeFieldAnimatePlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PromocodeFieldAnimatePlatform] when
  /// they register themselves.
  static set instance(PromocodeFieldAnimatePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
