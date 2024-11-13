import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double longitude;

  Future<void> getCurrentLocation() async {
    try {
      // Kiểm tra quyền truy cập vị trí
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        // Nếu dịch vụ vị trí không được bật, có thể thông báo cho người dùng
        print('Location services are disabled.');
        return;
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          // Quyền bị từ chối
          print('Location permissions are denied.');
          return;
        }
      }
      
      if (permission == LocationPermission.deniedForever) {
        // Quyền bị từ chối vĩnh viễn
        print('Location permissions are permanently denied.');
        return;
      }

      // Lấy vị trí hiện tại nếu quyền được cấp
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print('Error occurred while getting location: $e');
    }
  }
}
