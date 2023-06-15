import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:high_level/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  final userName = find.byKey(const ValueKey('username_key'));
  final password = find.byKey(const ValueKey('password_key'));
  final loginBtn = find.byKey(const ValueKey('login_key'));

  group('Login Scenario', () {
    testWidgets('Login', (tester) async {
      app.main();
      await tester.pumpAndSettle();
      await tester.tap(userName);
      await tester.enterText(userName, 'highlevel');
      await tester.enterText(password, 'pass123');
      await tester.pumpAndSettle();
      await tester.tap(loginBtn);
      await tester.pumpAndSettle();
      expect(find.text('Welcome to the home screen!'), findsOneWidget);
    });
  });
}
