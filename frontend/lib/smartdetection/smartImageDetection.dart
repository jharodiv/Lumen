/*import 'dart:io';
import 'dart:ui' as ui;
import 'package:flutter/services.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';
import 'package:image/image.dart' as img;
import 'package:path_provider/path_provider.dart';

Future<File> smartImageDetection(File imageFile) async {
  final inputImage = InputImage.fromFile(imageFile);

  final options = FaceDetectorOptions(
    enableContours: false,
    enableClassification: false,
  );

  final faceDetector = FaceDetector(options: options);

  //DetectFaces
  final faces = await faceDetector.processImage(inputImage);

  final bytes = await imageFile.readAsBytes();
  final image = img.decodeImage(bytes);

  if (image == null) throw Exception("Failed");

  img.Image cropped;

  if (faces.isNotEmpty) {
    // Use first detected face
    final face = faces.first.boundingBox;
    final centerX = face.center.dx.toInt();
    final centerY = face.center.dy.toInt();
    const cropSize = 250;

    cropped = img.copyCrop(
      image,
      x: centerX - cropSize ~/ 2,
      y: centerY - cropSize ~/ 2,
      width: cropSize,
      height: cropSize,
    );
  } else {
    // No face detected – fallback to center crop
    cropped = img.copyCrop(
      image,
      x: (image.width - 250) ~/ 2,
      y: (image.height - 250) ~/ 2,
      width: 250,
      height: 250,
    );
  }

  final dir = await getTemporaryDirectory();
  final croppedFile =
      File('${dir.path}/cropped_${DateTime.now().millisecondsSinceEpoch}.jpg');
  await croppedFile.writeAsBytes(img.encodeJpg(cropped));
  return croppedFile;
}
*/
