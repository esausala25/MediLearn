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
    apiKey: 'AIzaSyBtVENLVvBfYGMuQcmOuHM3p5OoFqhTQHQ',
    appId: '1:704398422851:web:80bec232d3cc686dafb5f6',
    messagingSenderId: '704398422851',
    projectId: 'medilearn-5fbd9',
    authDomain: 'medilearn-5fbd9.firebaseapp.com',
    storageBucket: 'medilearn-5fbd9.appspot.com',
    measurementId: 'G-6BZNGMEB84',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBqF_aMMXLjU8sx0b_t531EDgl_mGmGWio',
    appId: '1:704398422851:android:20f55c9e2adb537bafb5f6',
    messagingSenderId: '704398422851',
    projectId: 'medilearn-5fbd9',
    storageBucket: 'medilearn-5fbd9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCIsd0XxwNp8YoS4Li_-xrB3eu0FBZV7zw',
    appId: '1:704398422851:ios:599aee089dc3ab02afb5f6',
    messagingSenderId: '704398422851',
    projectId: 'medilearn-5fbd9',
    storageBucket: 'medilearn-5fbd9.appspot.com',
    iosBundleId: 'com.codigocorrecto.mediLearn',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCIsd0XxwNp8YoS4Li_-xrB3eu0FBZV7zw',
    appId: '1:704398422851:ios:476f22679a0dd6e6afb5f6',
    messagingSenderId: '704398422851',
    projectId: 'medilearn-5fbd9',
    storageBucket: 'medilearn-5fbd9.appspot.com',
    iosBundleId: 'com.codigocorrecto.mediLearn.RunnerTests',
  );
}
