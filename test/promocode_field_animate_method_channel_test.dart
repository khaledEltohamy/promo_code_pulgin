import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:promocode_field_animate/promocode_field_animate_method_channel.dart';

void main() {
  MethodChannelPromocodeFieldAnimate platform = MethodChannelPromocodeFieldAnimate();
  const MethodChannel channel = MethodChannel('promocode_field_animate');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
