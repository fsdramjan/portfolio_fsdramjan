import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'src/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyAjJPw6SjJiPrWk5TelgtddjAamYHfDdKU",
      authDomain: "quickshop-80a39.firebaseapp.com",
      projectId: "quickshop-80a39",
      storageBucket: "quickshop-80a39.appspot.com",
      messagingSenderId: "670558012879",
      appId: "1:670558012879:web:c4cb80dcd64d11909dbeba",
      measurementId: "G-J665SP2ECB",
    ),
  );
  runApp(App());
}
