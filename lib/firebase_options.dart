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
    apiKey: 'AIzaSyC-MqPxi6ZY3TI3vR4okIjh7rQdMSr63o4',
    appId: '1:731093784755:web:504ad8838510ea96a1f8c6',
    messagingSenderId: '731093784755',
    projectId: 'macfitapp-49e43',
    authDomain: 'macfitapp-49e43.firebaseapp.com',
    storageBucket: 'macfitapp-49e43.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAJnJKooAjiE3dX-t0NryWr1dtywsq8uQI',
    appId: '1:731093784755:android:fc56e7b2e676353fa1f8c6',
    messagingSenderId: '731093784755',
    projectId: 'macfitapp-49e43',
    storageBucket: 'macfitapp-49e43.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD85_IJLBvOY5twUcu6w8tujdtL3mzDuBc',
    appId: '1:731093784755:ios:24aeb0b5bf71661ea1f8c6',
    messagingSenderId: '731093784755',
    projectId: 'macfitapp-49e43',
    storageBucket: 'macfitapp-49e43.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD85_IJLBvOY5twUcu6w8tujdtL3mzDuBc',
    appId: '1:731093784755:ios:0011c0a6f28c36f6a1f8c6',
    messagingSenderId: '731093784755',
    projectId: 'macfitapp-49e43',
    storageBucket: 'macfitapp-49e43.appspot.com',
    iosBundleId: 'com.example.flutterApplication1.RunnerTests',
  );
}
