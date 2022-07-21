import 'package:flutter_test/flutter_test.dart';
import 'package:promocode_field_animate/promocode_field_animate.dart';
import 'package:promocode_field_animate/promocode_field_animate_platform_interface.dart';
import 'package:promocode_field_animate/promocode_field_animate_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPromocodeFieldAnimatePlatform 
    with MockPlatformInterfaceMixin
    implements PromocodeFieldAnimatePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PromocodeFieldAnimatePlatform initialPlatform = PromocodeFieldAnimatePlatform.instance;

  test('$MethodChannelPromocodeFieldAnimate is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPromocodeFieldAnimate>());
  });

  test('getPlatformVersion', () async {
    PromocodeFieldAnimate promocodeFieldAnimatePlugin = PromocodeFieldAnimate();
    MockPromocodeFieldAnimatePlatform fakePlatform = MockPromocodeFieldAnimatePlatform();
    PromocodeFieldAnimatePlatform.instance = fakePlatform;
  
    expect(await promocodeFieldAnimatePlugin.getPlatformVersion(), '42');
  });
}
