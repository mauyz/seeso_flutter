import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:seeso_flutter/seeso_flutter_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelSeesoFlutter platform = MethodChannelSeesoFlutter();
  const MethodChannel channel = MethodChannel('seeso_flutter');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect('test', '42');
  });
}
