import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'seeso_flutter_method_channel.dart';

abstract class SeesoFlutterPlatform extends PlatformInterface {
  /// Constructs a SeesoFlutterPlatform.
  SeesoFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static SeesoFlutterPlatform _instance = MethodChannelSeesoFlutter();

  /// The default instance of [SeesoFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelSeesoFlutter].
  static SeesoFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SeesoFlutterPlatform] when
  /// they register themselves.
  static set instance(SeesoFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getSeeSoVersion() {
    throw UnimplementedError('getSeeSoVersion() has not been implemented.');
  }
}
