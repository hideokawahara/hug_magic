//Packages
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('地図'),
      ),
      body: const MapPageBody(),
    );
  }
}

class MapPageBody extends StatelessWidget {
  const MapPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MapApp();
  }
}

class MapApp extends StatefulWidget {
  const MapApp({super.key});
  @override
  State<MapApp> createState() => _MapAppState();
}

class _MapAppState extends State<MapApp> {
  List<Marker> circleMarkers = [];
  final controller = MapController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        // マップ表示設定
        mapController: controller,
        options: MapOptions(
          center: LatLng(34.6729868, 135.4922423),
          zoom: 13,
          interactiveFlags: InteractiveFlag.all,
          enableScrollWheel: true,
          scrollWheelVelocity: 0.00001,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.app',
          ),
          MarkerLayer(
            markers: circleMarkers,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          initLocation();
        },
        child: const Icon(
          Icons.location_searching,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    // initLocation();
  }

  Future<void> initLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    // var accuracy = await Geolocator.getLocationAccuracy();
    // bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    final latitude = position.latitude;
    final longitude = position.longitude;
    initCircleMarker(latitude, longitude);
    setState(() {});
  }

  void initCircleMarker(double latitude, double longitude) {
    Marker circleMarler = Marker(
      // color: Colors.indigo.withOpacity(0.9),
      // radius: 10,
      // borderColor: Colors.white.withOpacity(0.9),
      // borderStrokeWidth: 3,
      // width: 100,
      // height: 100,
      point: LatLng(latitude, longitude),
      builder: (BuildContext context) {
        return const Icon(
          Icons.location_pin,
          color: Colors.redAccent,
          size: 50,
        );
      },
    );
    circleMarkers.add(circleMarler);
    controller.move(LatLng(latitude, longitude), 15.26);
  }
}
