
import 'promocode_field_animate_platform_interface.dart';

class PromocodeFieldAnimate {
  Future<String?> getPlatformVersion() {
    return PromocodeFieldAnimatePlatform.instance.getPlatformVersion();
  }
}
