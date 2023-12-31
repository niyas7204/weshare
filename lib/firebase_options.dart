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
    apiKey: 'AIzaSyDpxU2NTc1-DLWC6Lc39owfWXazN9b6Qf8',
    appId: '1:998404400991:web:6176c5f5270e080e8878ea',
    messagingSenderId: '998404400991',
    projectId: 'weshare-31e4a',
    authDomain: 'weshare-31e4a.firebaseapp.com',
    storageBucket: 'weshare-31e4a.appspot.com',
    measurementId: 'G-R0HPHVHVSQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBTjF800jUiTI6C0cHXWJ73Nbys4n_48GQ',
    appId: '1:998404400991:android:8f289de227ad28848878ea',
    messagingSenderId: '998404400991',
    projectId: 'weshare-31e4a',
    storageBucket: 'weshare-31e4a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyALGr1pMDeJWwYPqtWG54w7cFd6SGPWPz4',
    appId: '1:998404400991:ios:bb80ad214bfe4b8e8878ea',
    messagingSenderId: '998404400991',
    projectId: 'weshare-31e4a',
    storageBucket: 'weshare-31e4a.appspot.com',
    iosBundleId: 'com.example.weshare',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyALGr1pMDeJWwYPqtWG54w7cFd6SGPWPz4',
    appId: '1:998404400991:ios:cdd91b17c9c198998878ea',
    messagingSenderId: '998404400991',
    projectId: 'weshare-31e4a',
    storageBucket: 'weshare-31e4a.appspot.com',
    iosBundleId: 'com.example.weshare.RunnerTests',
  );
}
