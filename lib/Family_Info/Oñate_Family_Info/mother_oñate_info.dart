import 'package:flutter/material.dart';
import 'package:innovative_task1/Image/Images.dart';
import '../../Information/oñate_family_information.dart';

class MotherOnateInfo extends StatefulWidget {
  const MotherOnateInfo({Key? key}) : super(key: key);

  @override
  State<MotherOnateInfo> createState() => _MotherOnateInfoState();
}

class _MotherOnateInfoState extends State<MotherOnateInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.deepPurple,
                    Colors.purple,
                    Colors.purpleAccent
                  ]
              )
          ),
        ),
        centerTitle: true,
        title: const Text('Darlene M. Oñate',
          style: TextStyle(
              color: Colors.white
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                child: Card(
                  shape: CircleBorder(),
                  elevation: 20,
                  shadowColor: Colors.purpleAccent,
                  child: Image(
                    height: 200,
                    width: 200,
                    image: AssetImage(
                        Images.motherOnateProfile
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: Colors.purpleAccent,
              child: ListTile(
                title: Row(
                  children: [
                    const Expanded(
                        flex: 5,
                        child: Text(
                            'Name'
                        )
                    ),
                    Expanded(
                        flex: 8,
                        child: Text(
                            ': ${OnateInformation.names[2]}'
                        )
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: Colors.purpleAccent,
              child: ListTile(
                title: Row(
                  children: [
                    const Expanded(
                        flex: 5,
                        child: Text(
                            'Relationship'
                        )
                    ),
                    Expanded(
                        flex: 8,
                        child: Text(
                            ': ${OnateInformation.relationship[2]}'
                        )
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: Colors.purpleAccent,
              child: ListTile(
                title: Row(
                  children: [
                    const Expanded(
                        flex: 5,
                        child: Text(
                            'Occupation'
                        )
                    ),
                    Expanded(
                        flex: 8,
                        child: Text(
                            ': ${OnateInformation.occupation[2]}'
                        )
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: Colors.purpleAccent,
              child: ListTile(
                title: Row(
                  children: [
                    const Expanded(
                        flex: 5,
                        child: Text(
                            'Birthday'
                        )
                    ),
                    Expanded(
                        flex: 8,
                        child: Text(
                            ': ${OnateInformation.birthday[2]}'
                        )
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              shadowColor: Colors.purpleAccent,
              child: ListTile(
                title: Row(
                  children: [
                    const Expanded(
                        flex: 5,
                        child: Text(
                            'Age'
                        )
                    ),
                    Expanded(
                        flex: 8,
                        child: Text(
                            ': ${OnateInformation.age[2]}'
                        )
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
