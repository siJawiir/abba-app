import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class ReportCoordinate extends StatefulWidget {
  const ReportCoordinate({Key? key}) : super(key: key);

  @override
  _ReportCoordinateState createState() => _ReportCoordinateState();
}

class _ReportCoordinateState extends State<ReportCoordinate> {
  final Completer<GoogleMapController> _controller = Completer();
  final List<Marker> myMarker = [];

  static const CameraPosition _initialPosition = CameraPosition(
    target: LatLng(21.422467892727948, 39.82638483336282),
    zoom: 14,
  );

  @override
  void initState() {
    super.initState();
    packData();
  }

  Future<Position> getUserPosition() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) {
      print('Error$error');
    });
    return await Geolocator.getCurrentPosition();
  }

  packData() {
    getUserPosition().then((value) async {
      myMarker.add(
        Marker(
          markerId: const MarkerId('Lokasi saya'),
          position: LatLng(value.latitude, value.longitude),
          infoWindow: const InfoWindow(title: 'Lokasi saya'),
        ),
      );
      CameraPosition cameraPosition = CameraPosition(
        target: LatLng(value.latitude, value.longitude),
        zoom: 14,
      );
      final GoogleMapController controller = await _controller.future;
      controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: MyTexts.reportCoordinate,
                ),
              ),
            ),
            const SizedBox(
              width: MySizes.spacingMedium,
            ),
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: MyTexts.reportAccuracy,
                ),
                readOnly: true,
              ),
            ),
            const SizedBox(
              width: MySizes.spacingMedium,
            ),
            ElevatedButton(
              onPressed: () => packData(),
              child: const Icon(Icons.location_searching_rounded),
            ),
          ],
        ),
        const SizedBox(height: MySizes.spacingMedium),
        SizedBox(
          height: 200,
          child: GoogleMap(
            initialCameraPosition: _initialPosition,
            mapType: MapType.normal,
            markers: Set<Marker>.of(myMarker),
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
        ),
      ],
    );
  }
}
