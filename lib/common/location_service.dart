import 'package:location/location.dart';

class LocationService {
  LocationService._();

  static final LocationService _instance = LocationService._();

  factory LocationService() {
    return _instance;
  }

  //Kiev's latitude and longitude
  final _defaultCityLatitude = 50.45;
  final _defaultCityLon = 30.52;

  final Location _location = Location();

  bool _serviceEnabled = false;
  PermissionStatus _permissionGranted = PermissionStatus.denied;
  late LocationData _locationData;

  Future<LocationData> getLocationData() async {
    _checkPermissions();

    if (_serviceEnabled && _permissionGranted == PermissionStatus.granted) {
      _locationData = await _location.getLocation();
    } else {
      _locationData = LocationData.fromMap({
        "latitude": _defaultCityLatitude,
        "longitude": _defaultCityLon,
      });
    }
    return _locationData;
  }

  void _checkPermissions() {
    _checkLocationServiceEnabled();
    _checkPermissionGranted();
  }

  void _checkLocationServiceEnabled() async {
    _serviceEnabled = await _location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await _location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }
  }

  void _checkPermissionGranted() async {
    _permissionGranted = await _location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await _location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
  }
}
