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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyC5bsd-MmVp79tweNNOGE5e-YZRMs57h0U',
    appId: '1:143587664441:web:cb77e71eb2427ae8f963e8',
    messagingSenderId: '143587664441',
    projectId: 'medicalapp-b8465',
    authDomain: 'medicalapp-b8465.firebaseapp.com',
    storageBucket: 'medicalapp-b8465.appspot.com',
    measurementId: 'G-1TWXYPV7QP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAH6_hBpceBLa3_peyyn3dM0o8YyK5BsYs',
    appId: '1:143587664441:android:c6a8d51ff2b74eb8f963e8',
    messagingSenderId: '143587664441',
    projectId: 'medicalapp-b8465',
    storageBucket: 'medicalapp-b8465.appspot.com',
  );

}