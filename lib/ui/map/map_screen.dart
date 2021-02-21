import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:naturesave/core/constans/app/local_datas.dart';
import 'package:naturesave/models/account.dart';
import 'package:naturesave/models/recycler_box.dart';
import 'package:naturesave/viewmodels/account_provider.dart';
import 'package:provider/provider.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen>
    with AutomaticKeepAliveClientMixin {
  AccountProvider _accountProvider;
  String _mapStyle;
  GoogleMapController _mapController;
  List<Marker> markers = [];

  @override
  Widget build(BuildContext context) {
    _accountProvider = Provider.of(context);
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
              _createMarketImageFromAsset();
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          FontAwesomeIcons.qrcode,
                        ),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Çevrendeki GDK (15)',
                        textAlign: TextAlign.center,
                      ),
                    )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          EvaIcons.inboxOutline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  BitmapDescriptor recycleIcon;

  Future<void> _createMarketImageFromAsset() async {
    if (recycleIcon == null) {
      final imageConfiguration = createLocalImageConfiguration(context);
      var bitmap = await BitmapDescriptor.fromAssetImage(
          imageConfiguration, 'asset/images/rec_box.png');
      setState(() {
        recycleIcon = bitmap;
      });
    }
  }

  static final CameraPosition _sauLocation = CameraPosition(
    tilt: 90,
    target: LatLng(40.742037, 30.3305423),
    zoom: 16,
  );

  Set<Marker> _getCurrentMarker() {
    var bList = LocalDatas.boxList;

    for (var cBox in bList) {
      markers.add(
        Marker(
            markerId: MarkerId(cBox.boxId),
            icon: recycleIcon,
            position: LatLng(cBox.geoPoint.latitude, cBox.geoPoint.longitude),
            onTap: () {
              showBoxInfo(cBox);
            }),
      );
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

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  void showBoxInfo(RecyclerBox cBox) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        context: context,
        builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  FontAwesomeIcons.recycle,
                  color: Colors.green,
                  size: 36,
                ),
              ),
              Text(cBox.boxId),
              SizedBox(
                height: 16,
              ),
              Text('Doluluk Oranı'),
              Text('%${cBox.fulness}'),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(EvaIcons.shoppingBag),
              ),
              Text('Poşet Sayısı'),
              Text('%${cBox.bagCount}'),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(FontAwesomeIcons.prescriptionBottle),
              ),
              Text('Şişe Sayısı'),
              Text('%${cBox.bottleCount}'),
              SizedBox(
                height: 32,
              ),
              Text('Poşet veya Şişe Al'),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(
                  FontAwesomeIcons.qrcode,
                  size: 50,
                ),
              )
            ],
          );
        });
  }
}
