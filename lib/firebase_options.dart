// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCGlpf3gYIXLnOcBGwGsN8iZdciEr0L2X8',
    appId: '1:999129403548:web:4e604903f778259e9f1d59',
    messagingSenderId: '999129403548',
    projectId: 'trivia-e86e6',
    authDomain: 'trivia-e86e6.firebaseapp.com',
    storageBucket: 'trivia-e86e6.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAaltOembmvW5WnLySfkFqnt7mqn0lI5VY',
    appId: '1:999129403548:android:de907403e4d672149f1d59',
    messagingSenderId: '999129403548',
    projectId: 'trivia-e86e6',
    storageBucket: 'trivia-e86e6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAK0MxbbyPk65GL44THQp8Kao-fDXXS23U',
    appId: '1:999129403548:ios:c566be40521653ff9f1d59',
    messagingSenderId: '999129403548',
    projectId: 'trivia-e86e6',
    storageBucket: 'trivia-e86e6.appspot.com',
    iosBundleId: 'com.example.triviaWithFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAK0MxbbyPk65GL44THQp8Kao-fDXXS23U',
    appId: '1:999129403548:ios:b2d16f85a28a96339f1d59',
    messagingSenderId: '999129403548',
    projectId: 'trivia-e86e6',
    storageBucket: 'trivia-e86e6.appspot.com',
    iosBundleId: 'com.example.triviaWithFlutter.RunnerTests',
  );
}
