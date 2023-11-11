import 'package:flutter/material.dart';

class SOSWidget extends StatelessWidget {
  const SOSWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Set your preferred width
      height: 100, // Set the same height as the width for a perfect circle
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        
        shape: BoxShape.rectangle, // Use BoxShape.circle for a perfect circle
        color: Colors.redAccent, // Change the color to your preference
        borderRadius: BorderRadius.all(Radius.circular(90))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              shape: BoxShape.circle, // Inner circle
              color: Colors.black38, // Same color as the outer container
            ),
            child: Center(
              child: Text(
                'SOS',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              // Add your functionality here
              // This could be the action to share the location
              // For example:
              // shareLocation();
              print('Share Location');
            },
            child: Text(
              'Share Location',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0, // Increased font size
                fontWeight: FontWeight.w300, // Making the font thin
              ),
            ),
          ),
        ],
      ),
    );
  }
}
