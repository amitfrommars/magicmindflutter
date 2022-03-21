import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:magicmind/screens/welcome.dart';

import 'screens/camerauipage.dart';

List<CameraDescription> cameras = <CameraDescription>[];

Future<void> main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
  } on CameraException catch (e) {
    logError(e.code, e.description);
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: welcomepage()
    );
  }
}

