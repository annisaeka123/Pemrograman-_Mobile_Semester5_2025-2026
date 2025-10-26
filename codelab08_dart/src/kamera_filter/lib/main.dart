import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'widget/takepicture_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Ambil daftar kamera yang tersedia
  final cameras = await availableCameras();
  final firstCamera = cameras.first;

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: TakePictureScreen(camera: firstCamera),
  ));
}
