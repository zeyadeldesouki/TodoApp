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
        return macos;
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
    apiKey: 'AIzaSyDbxvUf5CFWzea8xcADRZYolQ0jfL2NUFU',
    appId: '1:960074186632:web:d782726cbf3aaa87fd843d',
    messagingSenderId: '960074186632',
    projectId: 'todoapp-a0a89',
    authDomain: 'todoapp-a0a89.firebaseapp.com',
    storageBucket: 'todoapp-a0a89.firebasestorage.app',
    measurementId: 'G-20MKW3VQ79',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAP5VIUMLzKLzd9N6X5_fhiBop2RYAbqxM',
    appId: '1:960074186632:android:a9f551c62a596041fd843d',
    messagingSenderId: '960074186632',
    projectId: 'todoapp-a0a89',
    storageBucket: 'todoapp-a0a89.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDjDH3T-7L0Ycv6bYp70x_RM_FWFWxg3KU',
    appId: '1:960074186632:ios:f11bb6f44cfda6f1fd843d',
    messagingSenderId: '960074186632',
    projectId: 'todoapp-a0a89',
    storageBucket: 'todoapp-a0a89.firebasestorage.app',
    iosBundleId: 'com.example.todoApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDjDH3T-7L0Ycv6bYp70x_RM_FWFWxg3KU',
    appId: '1:960074186632:ios:f11bb6f44cfda6f1fd843d',
    messagingSenderId: '960074186632',
    projectId: 'todoapp-a0a89',
    storageBucket: 'todoapp-a0a89.firebasestorage.app',
    iosBundleId: 'com.example.todoApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDbxvUf5CFWzea8xcADRZYolQ0jfL2NUFU',
    appId: '1:960074186632:web:cdf361bbc55e887bfd843d',
    messagingSenderId: '960074186632',
    projectId: 'todoapp-a0a89',
    authDomain: 'todoapp-a0a89.firebaseapp.com',
    storageBucket: 'todoapp-a0a89.firebasestorage.app',
    measurementId: 'G-KYBRVWPGNS',
  );
}
