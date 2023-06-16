import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:high_level/main.dart' as app;

import 'pages/login_page.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  LoginPageTest loginPageTest = LoginPageTest();

  group('Login Scenario', () {
    loginPageTest.test1();
  });
}
