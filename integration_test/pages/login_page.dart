import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:high_level/main.dart' as app;

class LoginPageTest {
  final userName = find.byKey(const ValueKey('username_key'));
  final password = find.byKey(const ValueKey('password_key'));
  final loginBtn = find.byKey(const ValueKey('login_key'));

  void test1() {
    group('Login With correct useranme and password', () {
      testWidgets('Login', (WidgetTester tester) async {
        app.main();
        await login(tester);
      });
    });
  }

//  Login Scenario
  Future<void> login(WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.tap(userName);
    await tester.enterText(userName, 'highlevel');
    await tester.enterText(password, 'pass123');
    await tester.pumpAndSettle();
    await tester.tap(loginBtn);
    await tester.pumpAndSettle();
    expect(find.text('Welcome to the home screen!'), findsOneWidget);
  }
}
