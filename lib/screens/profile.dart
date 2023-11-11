import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({required Key key, required this.title}) : super(key: key);

  final String title;

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final String profileImg = 'assets/profile_img.jpeg';
  final String name = 'Abhay Gupta';
  final String email = 'hackyabhay@gmail.com';
  final String phoneNumber = '7477066373';
  final String safeStatus = "SAFE";
  final int followersCount = 1205;
  final int followingCount = 360;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xFF6626E6),
                  const Color(0xFF26CBC0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.center,
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(top: _height / 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage(profileImg),
                            radius: _height / 10,
                          ),
                          SizedBox(
                            height: _height / 30,
                          ),
                          Text(
                            name,
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: _height / 2.2),
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: _height / 2.6,
                      left: _width / 20,
                      right: _width / 20,
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black45,
                                blurRadius: 2.0,
                                offset: Offset(0.0, 2.0),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(_width / 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                headerChild('Status', safeStatus),
                                // headerChild('Followers', followersCount),
                                // headerChild('Following', followingCount),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: _height / 20),
                          child: Column(
                            children: [
                              infoChild(_width, Icons.email, email),
                              infoChild(_width, Icons.call, phoneNumber),
                              infoChild(_width, Icons.group_add, 'CONNECT CODE'),
                              IconButton(onPressed: ()
                                  {

                                  }, icon: const Icon(Icons.emergency_outlined,semanticLabel: "ENABLE SOS MODE",)),
                              Padding(
                                padding: EdgeInsets.only(top: _height / 30),
                                child: Container(
                                  width: _width / 3,
                                  height: _height / 20,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF6626E6),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(_height / 40),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black87,
                                        blurRadius: 2.0,
                                        offset: Offset(0.0, 1.0),
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      'LOGOUT',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget headerChild(String header, String value) => Expanded(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          header,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '$value',
          style: TextStyle(
            fontSize: 14.0,
            color: const Color(0xFF6626E6),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );


  Widget infoChild(double width, IconData icon, data) => Padding(
    padding: EdgeInsets.only(bottom: 8.0),
    child: InkWell(
      child: Row(
        children: <Widget>[
          SizedBox(
            width: width / 10,
          ),
          Icon(
            icon,
            color: const Color(0xFF6626E6),
            size: 36.0,
          ),
          SizedBox(
            width: width / 20,
          ),
          Text(data),
        ],
      ),
      onTap: () {
        print('Info Object selected');
      },
    ),
  );
}
