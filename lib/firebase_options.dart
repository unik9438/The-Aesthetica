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
    apiKey: 'AIzaSyD3CS4GEzYDuRcEsBUtY6nEDltQvkUSZiU',
    appId: '1:158654281541:web:a493195dde05d2e95b302c',
    messagingSenderId: '158654281541',
    projectId: 'the-aesthetica-2707f',
    authDomain: 'the-aesthetica-2707f.firebaseapp.com',
    storageBucket: 'the-aesthetica-2707f.appspot.com',
    measurementId: 'G-J9ERP5TQQJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB6ItoHcjQ16VdR3kfg78Fby1e6Vu9Jthk',
    appId: '1:158654281541:android:1716aa3014a8a0655b302c',
    messagingSenderId: '158654281541',
    projectId: 'the-aesthetica-2707f',
    storageBucket: 'the-aesthetica-2707f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB9U6Eu8x2BPgnZMuBacKKr43tsvWOmU4A',
    appId: '1:158654281541:ios:419d8013d130ac045b302c',
    messagingSenderId: '158654281541',
    projectId: 'the-aesthetica-2707f',
    storageBucket: 'the-aesthetica-2707f.appspot.com',
    iosBundleId: 'com.example.dadaBhagwan',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB9U6Eu8x2BPgnZMuBacKKr43tsvWOmU4A',
    appId: '1:158654281541:ios:e880f86ab72b97a45b302c',
    messagingSenderId: '158654281541',
    projectId: 'the-aesthetica-2707f',
    storageBucket: 'the-aesthetica-2707f.appspot.com',
    iosBundleId: 'com.example.dadaBhagwan.RunnerTests',
  );
}