import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'seeso_flutter_platform_interface.dart';

/// An implementation of [SeesoFlutterPlatform] that uses method channels.
class MethodChannelSeesoFlutter extends SeesoFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('seeso_flutter');

}
