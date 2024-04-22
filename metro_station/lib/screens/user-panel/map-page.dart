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
                  buildCircleMarker(
                      LatLng(24.895497061318277, 67.13644331534472)),
                  buildCircleMarker(
                      LatLng(24.8860557023894, 67.15469777594238)),
                  buildCircleMarker(
                      LatLng(24.845170174305277, 67.36719122580182)),
                  buildCircleMarker(
                      LatLng(24.874878914680917, 66.96786970860487)),
                  buildCircleMarker(
                      LatLng(24.844954410722966, 67.3391141875205)),
                  buildCircleMarker(
                      LatLng(24.85752727726251, 67.06722025730122)),
                  buildCircleMarker(
                      LatLng(24.868526626256283, 67.0875018681303)),
                  buildCircleMarker(
                      LatLng(24.894913124974266, 67.13631456442475)),
                  buildCircleMarker(
                      LatLng(24.886291834492432, 67.14401950860525)),
                  buildCircleMarker(
                      LatLng(24.886519862456666, 67.12596766627766)),
                ],
              ),
              MarkerLayer(
                markers: [
                  buildMarker(LatLng(24.895079, 67.140628),
                      "Depot Hill Station of Karachi Circular Railway"),
                  buildMarker(LatLng(24.8860557023894, 67.15469777594238),
                      "Airport Railway Station"),
                  buildMarker(LatLng(24.845170174305277, 67.36719122580182),
                      "Badal Nala Railway Station"),
                  buildMarker(LatLng(24.874878914680917, 66.96786970860487),
                      "Baldia Railway Station"),
                  buildMarker(LatLng(24.844954410722966, 67.3391141875205),
                      "Bin Qasim Railway Station"),
                  buildMarker(LatLng(24.85752727726251, 67.06722025730122),
                      "Chanesar Halt Railway Station"),
                  buildMarker(LatLng(24.868526626256283, 67.0875018681303),
                      "Departure Yard Railway Station"),
                  buildMarker(LatLng(24.894913124974266, 67.13631456442475),
                      "Depot Hill Railway Station"),
                  buildMarker(LatLng(24.886291834492432, 67.14401950860525),
                      "Drigh Colony Railway Station"),
                  buildMarker(LatLng(24.886519862456666, 67.12596766627766),
                      "Drigh Road Railway Station"),
                  buildMarker(LatLng(24.845647565890644, 67.42794086627622),
                      "Gaddar railway station"),
                  buildMarker(LatLng(24.90902378684992, 67.07837890860613),
                      "Gillani railway station"),
                  // buildMarker(LatLng(), "Hump Yard railway station"),
                  // buildMarker(LatLng(), "Import Yard railway station"),
                  // buildMarker(LatLng(), "Jummah Goth railway station"),
                  // buildMarker(
                  //     LatLng(), "Karachi Bunder And Sidings railway station"),
                  // buildMarker(LatLng(), "Karachi Cantonment railway station"),
                  // buildMarker(LatLng(), "Karachi City railway station"),
                  // buildMarker(
                  //     LatLng(), "Karachi Port Trust Halt railway station"),
                  // buildMarker(LatLng(), "Karachi University railway station"),
                  // buildMarker(LatLng(), "Karsaz railway station"),
                  // buildMarker(LatLng(), "Kiamari Railway Station"),
                  // buildMarker(LatLng(), "Korangi railway station"),
                  // buildMarker(LatLng(), "Landhi railway station"),
                  // buildMarker(LatLng(), "Layari railway station"),
                  // buildMarker(LatLng(), "Liaquatabad railway station"),
                  // buildMarker(LatLng(), "Malir Cantonment railway station"),
                  // buildMarker(LatLng(), "Malir Colony railway station"),
                  // buildMarker(LatLng(), "Malir Railway Station"),
                  // buildMarker(LatLng(), "Manghopir railway station"),
                  // buildMarker(LatLng(), "Mihran Halt railway station"),
                  // buildMarker(LatLng(), "Model Colony railway station"),
                  // buildMarker(LatLng(), "North Nazimabad railway station"),
                  // buildMarker(LatLng(), "Orangi railway station"),
                  // buildMarker(LatLng(), "Reception Yard railway station"),
                  // buildMarker(LatLng(), "Shah Abdul Latif railway station"),
                  // buildMarker(LatLng(), "SITE Railway Station"),
                  // buildMarker(LatLng(), "Thole Produce Yard railway station"),
                  // buildMarker(LatLng(), "Urdu College railway station"),
                  // buildMarker(LatLng(), "Wazir Mansion railway station"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  CircleMarker buildCircleMarker(LatLng coordinates) {
    return CircleMarker(
        point: coordinates,
        radius: 500,
        useRadiusInMeter: true,
        color: Colors.white,
        borderColor: Colors.black,
        borderStrokeWidth: 50);
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
