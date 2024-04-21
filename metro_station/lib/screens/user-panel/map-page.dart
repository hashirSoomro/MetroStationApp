// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              initialCenter: LatLng(24.895497061318277, 67.13644331534472),
              initialZoom: 11.2,
              minZoom: 11.0, // Minimum zoom level
              maxZoom: 13.0, // Maximum zoom level
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              CircleLayer(
                circles: [
                  CircleMarker(
                      point: LatLng(24.895497061318277, 67.13644331534472),
                      radius: 500,
                      useRadiusInMeter: true,
                      color: Colors.white,
                      borderColor: Colors.black,
                      borderStrokeWidth: 50),
                ],
              ),
              MarkerLayer(
                markers: [
                  buildMarker(LatLng(24.895079, 67.140628),
                      "Depot Hill Station of Karachi Circular Railway"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Marker buildMarker(LatLng coordinates, String word) {
    return Marker(
        point: coordinates,
        width: 200,
        height: 35,
        child: Text(
          word,
          style: TextStyle(
              fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ));
  }
}
