import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Guardian {
  final String name;
  final String phoneNumber;
  bool isPrimary;

  Guardian({
    required this.name,
    required this.phoneNumber,
    this.isPrimary = false,
  });
}

class GuardiansPage extends StatefulWidget {
  @override
  _GuardiansPageState createState() => _GuardiansPageState();
}

class _GuardiansPageState extends State<GuardiansPage> {
  List<Guardian> guardians = [
    Guardian(name: 'Alice', phoneNumber: '1234567890'),
    Guardian(name: 'Bob', phoneNumber: '9876543210'),
    Guardian(name: 'Eve', phoneNumber: '5551239876'),
    Guardian(name: 'Charlie', phoneNumber: '7778889990'),
    // Add more guardians as needed
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:  ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Guardians'),
        ),
        body: ListView.builder(
          itemCount: guardians.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(guardians[index].name[0]),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(guardians[index].name),
                      Text(
                        guardians[index].phoneNumber,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  trailing: SizedBox(
                    width: 140, // Adjust as needed
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                guardians.removeAt(index);
                              });
                            },
                            icon: Icon(Icons.star_border_outlined,),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                guardians.removeAt(index);
                              });
                            },
                            icon: Icon(Icons.delete),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GuardiansPage(),
    );
  }
}
