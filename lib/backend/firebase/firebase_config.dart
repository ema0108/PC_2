import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCqMwoRKTz0_g_YY2d9RsGSXOeqJfATgFo",
            authDomain: "personalcontrol-8c00d.firebaseapp.com",
            projectId: "personalcontrol-8c00d",
            storageBucket: "personalcontrol-8c00d.appspot.com",
            messagingSenderId: "192408530613",
            appId: "1:192408530613:web:1dddc829cabd5fba1758fc"));
  } else {
    await Firebase.initializeApp();
  }
}
