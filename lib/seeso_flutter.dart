import 'seeso_flutter_platform_interface.dart';

class SeesoFlutter {

  Future<String?> getPlatformVersion() {
    return SeesoFlutterPlatform.instance.getSeeSoVersion();
  }
}
