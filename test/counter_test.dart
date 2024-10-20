import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_practice_1/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group("group", () {
    testWidgets(WidgetTester tester) async {
      app.main();

      await tester.pumpAndSettle();

      ///初期値が０であることを確認
      expect(find.text('0'), findsOneWidget);
    }
  });
}
