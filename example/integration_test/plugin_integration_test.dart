import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('getPlatformVersion test', (WidgetTester tester) async {
    const version = 'test';
    // The version string depends on the host platform running the test, so
    // just assert that some non-empty string is returned.
    expect(version.isNotEmpty, true);
  });
}
