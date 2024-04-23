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
                  buildCircleMarker(
                      LatLng(24.845647565890644, 67.42794086627622)),
                  buildCircleMarker(
                      LatLng(24.90902378684992, 67.07837890860613)),
                  buildCircleMarker(
                      LatLng(24.843784961207604, 67.2693999951124)),
                  buildCircleMarker(
                      LatLng(24.84376225112354, 67.04014320475558)),
                  buildCircleMarker(
                      LatLng(24.848533422008927, 67.00635171534839)),
                  buildCircleMarker(
                      LatLng(24.847937440857336, 66.99009161290188)),
                  buildCircleMarker(
                      LatLng(24.915831601309744, 67.10019530124814)),
                  buildCircleMarker(
                      LatLng(24.875150021032663, 67.1002592911747)),
                  buildCircleMarker(
                      LatLng(24.850899977148835, 67.21196689968107)),
                  buildCircleMarker(
                      LatLng(24.914055948534436, 67.05411072853629)),
                  buildCircleMarker(
                      LatLng(24.952032807925896, 67.22622605894128)),
                  buildCircleMarker(
                      LatLng(24.88392177610716, 67.17637335437287)),
                  buildCircleMarker(
                      LatLng(24.904955533987067, 67.00177726542051)),
                  buildCircleMarker(
                      LatLng(24.901097746789468, 67.19395524335187)),
                  buildCircleMarker(LatLng(24.92141487671318, 67.035699995115)),
                  buildCircleMarker(
                      LatLng(24.916097234347866, 67.02050650101135)),
                  buildCircleMarker(
                    LatLng(24.884208754979998, 66.97382186019917),
                  ),
                  buildCircleMarker(
                      LatLng(24.894689503610728, 66.9871532318743)),
                  buildCircleMarker(
                      LatLng(24.913190005649046, 67.08704215676059)),
                  buildCircleMarker(LatLng(24.85678961951804, 66.986866654365)),
                ],
              ),
              MarkerLayer(
                markers: [
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
                  buildMarker(LatLng(24.843784961207604, 67.2693999951124),
                      "Jummah Goth railway station"),
                  buildMarker(LatLng(24.84376225112354, 67.04014320475558),
                      "Karachi Cantonment railway station"),
                  buildMarker(LatLng(24.848533422008927, 67.00635171534839),
                      "Karachi City railway station"),
                  buildMarker(LatLng(24.847937440857336, 66.99009161290188),
                      "Karachi Port Trust Halt railway station"),
                  buildMarker(LatLng(24.915831601309744, 67.10019530124814),
                      "Karachi University railway station"),
                  buildMarker(LatLng(24.875150021032663, 67.1002592911747),
                      "Karsaz railway station"),
                  buildMarker(LatLng(24.850899977148835, 67.21196689968107),
                      "Landhi railway station"),
                  buildMarker(LatLng(24.914055948534436, 67.05411072853629),
                      "Liaquatabad railway station"),
                  buildMarker(LatLng(24.952032807925896, 67.22622605894128),
                      "Malir Cantonment railway station"),
                  buildMarker(LatLng(24.88392177610716, 67.17637335437287),
                      "Malir Colony railway station"),
                  buildMarker(LatLng(24.904955533987067, 67.00177726542051),
                      "Manghopir railway station"),
                  buildMarker(LatLng(24.901097746789468, 67.19395524335187),
                      "Model Colony railway station"),
                  buildMarker(LatLng(24.92141487671318, 67.035699995115),
                      "North Nazimabad railway station"),
                  buildMarker(LatLng(24.916097234347866, 67.02050650101135),
                      "Orangi railway station"),
                  buildMarker(LatLng(24.884208754979998, 66.97382186019917),
                      "Shah Abdul Latif railway station"),
                  buildMarker(LatLng(24.894689503610728, 66.9871532318743),
                      "SITE Railway Station"),
                  buildMarker(LatLng(24.913190005649046, 67.08704215676059),
                      "Urdu College railway station"),
                  buildMarker(LatLng(24.85678961951804, 66.986866654365),
                      "Wazir Mansion railway station"),
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
