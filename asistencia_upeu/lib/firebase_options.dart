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
    apiKey: 'AIzaSyCOtgzB-rJy5KJMUOZZ876_tfGDBsuMTRo',
    appId: '1:864464048946:web:0f48139ad8056a38967d2b',
    messagingSenderId: '864464048946',
    projectId: 'asistenciaupeu-c612e',
    authDomain: 'asistenciaupeu-c612e.firebaseapp.com',
    storageBucket: 'asistenciaupeu-c612e.firebasestorage.app',
    measurementId: 'G-R70WV4X1GN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBbhx_BFpNDLG-ATQa8PZaaD9m5XfwYLBk',
    appId: '1:864464048946:android:e867d61f80a74a2e967d2b',
    messagingSenderId: '864464048946',
    projectId: 'asistenciaupeu-c612e',
    storageBucket: 'asistenciaupeu-c612e.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBUXG9QctSY7DV1wKapd4WvuMSem-hJiHU',
    appId: '1:864464048946:ios:288318806cce6744967d2b',
    messagingSenderId: '864464048946',
    projectId: 'asistenciaupeu-c612e',
    storageBucket: 'asistenciaupeu-c612e.firebasestorage.app',
    iosBundleId: 'pe.edu.upeu.asistenciaUpeu',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBUXG9QctSY7DV1wKapd4WvuMSem-hJiHU',
    appId: '1:864464048946:ios:288318806cce6744967d2b',
    messagingSenderId: '864464048946',
    projectId: 'asistenciaupeu-c612e',
    storageBucket: 'asistenciaupeu-c612e.firebasestorage.app',
    iosBundleId: 'pe.edu.upeu.asistenciaUpeu',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCOtgzB-rJy5KJMUOZZ876_tfGDBsuMTRo',
    appId: '1:864464048946:web:e6fc35addf018e49967d2b',
    messagingSenderId: '864464048946',
    projectId: 'asistenciaupeu-c612e',
    authDomain: 'asistenciaupeu-c612e.firebaseapp.com',
    storageBucket: 'asistenciaupeu-c612e.firebasestorage.app',
    measurementId: 'G-TJS28CDBW4',
  );
}