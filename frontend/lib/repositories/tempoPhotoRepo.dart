import 'package:frontend/repositories/photoRepositories.dart';

class Tempophotorepo implements Photorepositories {
  @override
  Future<List<String>> fetchPhotos() async {
    await Future.delayed(const Duration(milliseconds: 500));

    return [
      'assets/images/photoposted/image1.jpeg',
      'assets/images/photoposted/image2.jpeg',
      'assets/images/photoposted/image3.jpeg',
      'assets/images/photoposted/image4.jpeg',
      'assets/images/photoposted/image5.jpeg',
      'assets/images/photoposted/image6.jpeg',
      'assets/images/photoposted/image7.jpeg',
      'assets/images/photoposted/image8.jpeg',
    ];
  }
}
//This will act as the temporary database for the temporary photos (Frontend approach)
// Backend approach will be implemented soon
