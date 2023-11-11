import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class EmergencyNumbersWidget extends StatelessWidget {
  static const platform = MethodChannel('com.thesaviour.methodchannel');
  final List<Map<String, String>> emergencyNumbers = [
    {"Police": "100"},
    {"Fire": "101"},
    {"Ambulance": "102"},
    {"Emergency Disaster Management Services": "108"},
    {"Women Helpline": "1091"},
    {"AIDS Helpline": "1097"},
    {"Child Abuse Hotline": "1098"},
    {"Elderly Helpline": "1090"},
    {"Railway Police": "182"},
    {"Road Accident Emergency Service": "1073"},
    {"Natural Disaster": "1077"},
    {"National Emergency Response System": "112"},
    // Add more emergency numbers as needed
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Numbers'),
      ),
      body: ListView.builder(
        itemCount: emergencyNumbers.length,
        itemBuilder: (context, index) {
          var emergency = emergencyNumbers[index];
          var emergencyName = emergency.keys.first;
          var emergencyNumber = emergency.values.first;

          return ListTile(
            leading: Icon(Icons.person),
            title: Text(emergencyName),
            subtitle: Text(emergencyNumber),
            trailing: IconButton(
              icon: Icon(Icons.phone),
              onPressed: () => _dialNumber(emergencyNumber),
            ),
          );
        },
      ),
    );
  }

  static Future<void> _dialNumber(String number) async {
    try {
      await platform.invokeMethod('dialNumber', {"number": number});
    } on PlatformException catch (e) {
      throw 'Error: ${e.message}';
    }
  }
}
