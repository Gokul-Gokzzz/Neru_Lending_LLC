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
    apiKey: 'AIzaSyDk5wyCuXGud9mlZaLu3qL_JEFs8kjkgOI',
    appId: '1:251082191038:web:0e3d30c0c0868a7f2a6eef',
    messagingSenderId: '251082191038',
    projectId: 'luxury-guide-6949d',
    authDomain: 'luxury-guide-6949d.firebaseapp.com',
    storageBucket: 'luxury-guide-6949d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD188Ld68yiNbHTvQ0HNrmYDayN15S-CPM',
    appId: '1:251082191038:android:8407207d610066eb2a6eef',
    messagingSenderId: '251082191038',
    projectId: 'luxury-guide-6949d',
    storageBucket: 'luxury-guide-6949d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCIQFxgwCjr-Wl6MeiK8rfXKBVUEcr4JhU',
    appId: '1:251082191038:ios:a13b091b46755e772a6eef',
    messagingSenderId: '251082191038',
    projectId: 'luxury-guide-6949d',
    storageBucket: 'luxury-guide-6949d.appspot.com',
    iosBundleId: 'com.example.luxuryGuide',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCIQFxgwCjr-Wl6MeiK8rfXKBVUEcr4JhU',
    appId: '1:251082191038:ios:c0c5e618def7ddf12a6eef',
    messagingSenderId: '251082191038',
    projectId: 'luxury-guide-6949d',
    storageBucket: 'luxury-guide-6949d.appspot.com',
    iosBundleId: 'com.example.luxuryGuide.RunnerTests',
  );
}
