import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter OSM Starter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const MapaOpenSourceScreen(),
    );
  }
}

class MapaOpenSourceScreen extends StatefulWidget {
  const MapaOpenSourceScreen({super.key});

  @override
  State<MapaOpenSourceScreen> createState() => _MapaOpenSourceScreenState();
}

class _MapaOpenSourceScreenState extends State<MapaOpenSourceScreen> {
  final MapController _mapController = MapController();
  static const LatLng _bogota = LatLng(4.7110, -74.0721);

  final List<Marker> _markers = [
    const Marker(
      point: _bogota,
      width: 45,
      height: 45,
      child: Tooltip(
        message: 'Bogotá - Centro',
        child: Icon(Icons.location_pin, color: Colors.red, size: 42),
      ),
    ),
  ];

  void _addMarkerAt(LatLng point) {
    setState(() {
      _markers.add(
        Marker(
          point: point,
          width: 40,
          height: 40,
          child: const Icon(Icons.place, color: Colors.teal, size: 38),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa Open Source (OSM)'),
        actions: [
          IconButton(
            tooltip: 'Centrar en Bogotá',
            icon: const Icon(Icons.my_location),
            onPressed: () => _mapController.move(_bogota, 13),
          ),
          IconButton(
            tooltip: 'Limpiar marcadores extra',
            icon: const Icon(Icons.delete_outline),
            onPressed: () {
              setState(() {
                _markers.removeRange(1, _markers.length);
              });
            },
          ),
        ],
      ),
      body: FlutterMap(
        mapController: _mapController,
        options: MapOptions(
          initialCenter: _bogota,
          initialZoom: 13,
          onTap: (tapPosition, point) => _addMarkerAt(point),
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.ejemplo.flutter_osm_starter',
          ),
          MarkerLayer(markers: _markers),
          RichAttributionWidget(
            attributions: [
              TextSourceAttribution(
                'OpenStreetMap contributors',
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
