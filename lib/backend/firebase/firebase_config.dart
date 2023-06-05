import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAWv5RxUv-p7Kbed9spHXtfqNqntPJAWdQ",
            authDomain: "project-seri.firebaseapp.com",
            projectId: "project-seri",
            storageBucket: "project-seri.appspot.com",
            messagingSenderId: "779052740452",
            appId: "1:779052740452:web:079cbce73e6e20a29c5471"));
  } else {
    await Firebase.initializeApp();
  }
}
