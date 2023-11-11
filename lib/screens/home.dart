import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_saviour/screens/addresswidget.dart';
import 'package:the_saviour/screens/sosWidget.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const platform = MethodChannel('com.thesaviour.methodchannel');
  // late GoogleMapController mapController;
  // final LatLng _initialPosition =
  //     const LatLng(37.7749, -122.4194); // San Francisco coordinates

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [AddressCardWidget( address: 'Mr John Smith. 132, My Street, Kingston, New York 12401.',),SOSWidget()
            // ElevatedButton(
            //   onPressed: _getBatteryLevel,
            //   child: const Text('Get Battery Level'),
            // ),
            // Text(_batteryLevel),
            // SizedBox(
            //   width: 300,
            //   height: 300,
            //   child: GoogleMap(
            //     onMapCreated: (GoogleMapController controller) {
            //       mapController = controller;
            //     },
            //     initialCameraPosition: CameraPosition(
            //       target: _initialPosition,
            //       zoom: 10.0,
            //     ),
            //   ),
            // ),
          ],
        ),

      ),
    );
  }

  // Get battery level.
  String _batteryLevel = 'Unknown battery level.';

  Future<void> _getBatteryLevel() async {
    String batteryLevel;
    try {
      final result = await platform.invokeMethod<int>('getBatteryLevel');
      batteryLevel = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }

    setState(() {
      _batteryLevel = batteryLevel;
    });
  }


}
