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
    apiKey: 'AIzaSyCddcPLpMNzM4djFoFRKWm6tfIvWjgfAJc',
    appId: '1:380699412012:web:ca957eeb4f6c6485b6b389',
    messagingSenderId: '380699412012',
    projectId: 'flu-ecom',
    authDomain: 'flu-ecom.firebaseapp.com',
    storageBucket: 'flu-ecom.firebasestorage.app',
    measurementId: 'G-FX2QBWSW68',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDO1qE1F40X01txMxsZM-TTc3WC1gqCOP0',
    appId: '1:380699412012:android:33a4968050ca3d25b6b389',
    messagingSenderId: '380699412012',
    projectId: 'flu-ecom',
    storageBucket: 'flu-ecom.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD5Dfqmy9gIUFt67p0GKXfKiK28VD6H7-I',
    appId: '1:380699412012:ios:b6c6dbba44efd041b6b389',
    messagingSenderId: '380699412012',
    projectId: 'flu-ecom',
    storageBucket: 'flu-ecom.firebasestorage.app',
    androidClientId: '380699412012-erc3hde1o3i2361unabmi4tsi5fuq7c4.apps.googleusercontent.com',
    iosClientId: '380699412012-o5h9k399oghj0g8vk1142qv13t9np0ut.apps.googleusercontent.com',
    iosBundleId: 'com.example.fluEcom',
  );
}
