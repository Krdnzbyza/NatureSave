import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:naturesave/models/account.dart';
import 'package:naturesave/viewmodels/account_provider.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  AccountProvider _accountProvider;
  List<Account> _allAccounts;
  String _mapStyle;
  GoogleMapController _mapController;
  List<Marker> markers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          GoogleMap(
            myLocationButtonEnabled: false,
            compassEnabled: false,
            mapType: MapType.normal,
            initialCameraPosition: _getCurrentCamera(),
            onMapCreated: (GoogleMapController controller) {
              _mapController = controller;
              controller.setMapStyle(_mapStyle);
            },
            markers: _getCurrentMarker(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 64.0, left: 16.0, right: 16.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 8.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        EvaIcons.chevronLeftOutline,
                        size: 40,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static final CameraPosition _sauLocation = CameraPosition(
    tilt: 90,
    target: LatLng(40.742037, 30.3305423),
    zoom: 14.4746,
  );

  Set<Marker> _getCurrentMarker() {
    var index = 0.000;

    for (var cAccount in _allAccounts) {
      index += 0.001;
      if (cAccount.geoPoint != null) {
        markers.add(
          Marker(
              markerId: MarkerId(cAccount.userId),
              position: LatLng(cAccount.geoPoint.latitude + index,
                  cAccount.geoPoint.longitude)),
        );
      }
    }
    print(markers.toSet());
    return markers.toSet();
  }

  CameraPosition _getCurrentCamera() {
    if (_accountProvider.currentAccount.geoPoint != null) {
      return CameraPosition(
        tilt: 90,
        target: LatLng(_accountProvider.currentAccount.geoPoint.latitude,
            _accountProvider.currentAccount.geoPoint.longitude),
        zoom: 14.0,
      );
    } else {
      return _sauLocation;
    }
  }
}
