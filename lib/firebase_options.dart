// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyA11_iKCrQ9YfbmOQgsYkg-nWNj3nGMZ4k',
    appId: '1:450077730982:web:d83a52397c503426d6ec67',
    messagingSenderId: '450077730982',
    projectId: 'getx-auth-flutter-new',
    authDomain: 'getx-auth-flutter-new.firebaseapp.com',
    storageBucket: 'getx-auth-flutter-new.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBqU6CN6GaUfhXiCVYIXUpsgLmy5JSnBcA',
    appId: '1:450077730982:android:b351885e5a145054d6ec67',
    messagingSenderId: '450077730982',
    projectId: 'getx-auth-flutter-new',
    storageBucket: 'getx-auth-flutter-new.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBDT0dhvWlUJd1osMBOZT_HFm5ENF6UDwg',
    appId: '1:450077730982:ios:01ac7cb1d644caacd6ec67',
    messagingSenderId: '450077730982',
    projectId: 'getx-auth-flutter-new',
    storageBucket: 'getx-auth-flutter-new.appspot.com',
    iosClientId: '450077730982-bukt7ka2gr3uc9peb1n2ch3pgn29rput.apps.googleusercontent.com',
    iosBundleId: 'com.example.getxAuthFlutterNew',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA11_iKCrQ9YfbmOQgsYkg-nWNj3nGMZ4k',
    appId: '1:450077730982:web:b35a18936da08955d6ec67',
    messagingSenderId: '450077730982',
    projectId: 'getx-auth-flutter-new',
    authDomain: 'getx-auth-flutter-new.firebaseapp.com',
    storageBucket: 'getx-auth-flutter-new.appspot.com',
  );
}
