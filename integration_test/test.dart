import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:c_s_c305_playlist_generator/flutter_flow/flutter_flow_drop_down.dart';
import 'package:c_s_c305_playlist_generator/flutter_flow/flutter_flow_icon_button.dart';
import 'package:c_s_c305_playlist_generator/flutter_flow/flutter_flow_widgets.dart';
import 'package:c_s_c305_playlist_generator/flutter_flow/flutter_flow_theme.dart';
import 'package:c_s_c305_playlist_generator/index.dart';
import 'package:c_s_c305_playlist_generator/main.dart';
import 'package:c_s_c305_playlist_generator/flutter_flow/flutter_flow_util.dart';

import 'package:provider/provider.dart';
import 'package:c_s_c305_playlist_generator/backend/firebase/firebase_config.dart';
import 'package:c_s_c305_playlist_generator/auth/firebase_auth/auth_util.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await initFirebase();
  });

  setUp(() async {
    await authManager.signOut();
    FFAppState.reset();
    final appState = FFAppState();
    await appState.initializePersistedState();
  });

  group('US2', () {
    testWidgets('login test', (WidgetTester tester) async {
      _overrideOnError();

      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(),
      ));

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(ValueKey('Login-Email_1v0m')), 'nitish_salvi@uri.edu');
      await tester.enterText(
          find.byKey(ValueKey('Login-Password_n3i8')), '123456');
      await tester.tap(find.byKey(ValueKey('Login-Button_badq')));
      await tester.pumpAndSettle();
      expect(find.text('Enter Playlist Prompt...'), findsWidgets);
    });

    testWidgets('sign out test', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'nitish_salvi@uri.edu', password: '123456');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: SettingsWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('Text_50z4')));
      await tester.pumpAndSettle();
      expect(find.text('Login'), findsWidgets);
    });

    testWidgets('Error Message Test', (WidgetTester tester) async {
      _overrideOnError();

      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: WelcomeScreenWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(ValueKey('Login-Email_1v0m')), 'nitish_salvi@uri.edu');
      await tester.enterText(
          find.byKey(ValueKey('Login-Password_n3i8')), '000000');
      await tester.tap(find.byKey(ValueKey('Login-Button_badq')));
      await tester.pumpAndSettle();
      expect(
          find.text(
              'Error: the supplied auth credential is incorrect, malformed or has expired'),
          findsNothing);
    });

    testWidgets('Password Recovery', (WidgetTester tester) async {
      _overrideOnError();

      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: WelcomeScreenWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('ForgotPassWord_ddwv')));
      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(ValueKey('ForgotPass-Emaill_sv41')),
          'nitish_salvi@uri.edu');
      expect(find.byKey(ValueKey('RecoverPass_zrcs')), findsWidgets);
    });
  });

  group('US1', () {
    testWidgets('Signup Test', (WidgetTester tester) async {
      _overrideOnError();

      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: WelcomeScreenWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.tap(find.text('Sign up'));
      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(ValueKey('Email-Signup_n7lt')), 'test894@gmail.com');
      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(ValueKey('Password-Signup_237z')), 'password');
      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(ValueKey('ConfirmPass-Signup_fsnp')), 'password');
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('Button_psx0')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('TextField_amw7')), findsWidgets);
    });
  });

  group('US3', () {});

  group('US4', () {
    testWidgets('Playlist Generation', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'langille0424@gmail.com', password: 'password');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: HomepageWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(ValueKey('TextField_mbla')), 'rock');
      await tester.tap(find.byKey(ValueKey('generate_button_38tj')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('Column_1jmc')), findsNWidgets(0));
    });

    testWidgets('Invalid Input', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'langille0424@gmail.com', password: 'password');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: HomepageWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(ValueKey('TextField_mbla')), 'grass');
      await tester.pumpAndSettle();
      expect(
        tester
            .widget<FFButtonWidget>(
                find.byKey(ValueKey('generate_button_38tj')))
            .onPressed,
        isNotNull,
      );
    });

    testWidgets('No Input', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'langille0424@gmail.com', password: 'password');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: HomepageWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('generate_button_38tj')));
      expect(find.byKey(ValueKey('TextField_mbla')), findsWidgets);
    });

    testWidgets('Playlist Opening', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'langille0424@gmail.com', password: 'password');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: HomepageWidget(),
        ),
      ));

      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(ValueKey('TextField_mbla')), 'rock');
      await tester.tap(find.byKey(ValueKey('generate_button_38tj')));
      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('viewPlaylist_bdeo')), findsWidgets);
    });
  });

  group('US5', () {});

  group('US6', () {
    testWidgets('US6', (WidgetTester tester) async {
      _overrideOnError();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: 'nitish_salvi@uri.edu', password: '123456');
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(
          entryPage: SettingsWidget(),
        ),
      ));

      await tester.tap(find.byKey(ValueKey('Switch_g324')));
      await tester.enterText(find.byKey(ValueKey('TextField_mbla')), 'country');
      await tester.tap(find.byKey(ValueKey('generate_button_38tj')));
    });
  });

  testWidgets('US7', (WidgetTester tester) async {
    _overrideOnError();
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'email1@email.com', password: 'password');
    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: HomepageWidget(),
      ),
    ));

    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(ValueKey('TextField_mbla')), 'pop');
    await tester.tap(find.byKey(ValueKey('generate_button_38tj')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Regenerate Playlist'));
    await tester.pumpAndSettle();
    expect(find.text('Your playlist has been generated!'), findsWidgets);
  });
}

// There are certain types of errors that can happen during tests but
// should not break the test.
void _overrideOnError() {
  final originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) {
    if (_shouldIgnoreError(errorDetails.toString())) {
      return;
    }
    originalOnError(errorDetails);
  };
}

bool _shouldIgnoreError(String error) {
  // It can fail to decode some SVGs - this should not break the test.
  if (error.contains('ImageCodecException')) {
    return true;
  }
  // Overflows happen all over the place,
  // but they should not break tests.
  if (error.contains('overflowed by')) {
    return true;
  }
  // Sometimes some images fail to load, it generally does not break the test.
  if (error.contains('No host specified in URI') ||
      error.contains('EXCEPTION CAUGHT BY IMAGE RESOURCE SERVICE')) {
    return true;
  }
  // These errors should be avoided, but they should not break the test.
  if (error.contains('setState() called after dispose()')) {
    return true;
  }

  return false;
}
