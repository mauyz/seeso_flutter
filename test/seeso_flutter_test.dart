import 'package:flutter_test/flutter_test.dart';
import 'package:seeso_flutter/seeso_flutter_platform_interface.dart';
import 'package:seeso_flutter/seeso_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSeesoFlutterPlatform
    with MockPlatformInterfaceMixin
    implements SeesoFlutterPlatform {
}

void main() {
  final SeesoFlutterPlatform initialPlatform = SeesoFlutterPlatform.instance;

  test('$MethodChannelSeesoFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSeesoFlutter>());
  });

  test('getPlatformVersion', () async {
    MockSeesoFlutterPlatform fakePlatform = MockSeesoFlutterPlatform();
    SeesoFlutterPlatform.instance = fakePlatform;

    expect('test', '42');
  });
}
