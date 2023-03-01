import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'package:my_app/app/app.dart';
import 'package:my_app/firebase_options.dart';
import 'package:path_provider/path_provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);

  // Abrir las boxes necesarias
  await Hive.openBox<bool>('Login');

  runApp(
    ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return const App();
      },
    ),
  );
}
