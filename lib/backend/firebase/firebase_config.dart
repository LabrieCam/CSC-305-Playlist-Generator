import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyATACyliNXcQ6-u8gm4JtsFbAXuJRFQiGY",
            authDomain: "csc-305-playlist-generator.firebaseapp.com",
            projectId: "csc-305-playlist-generator",
            storageBucket: "csc-305-playlist-generator.appspot.com",
            messagingSenderId: "138229641045",
            appId: "1:138229641045:web:c6fd9dbd7ed1a6bfc909dc",
            measurementId: "G-MYZXZ5D1XG"));
  } else {
    await Firebase.initializeApp();
  }
}
