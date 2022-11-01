import 'package:flutter/material.dart';
import 'package:innovative_task1/Image/Images.dart';
import '../../Information/vaguchay_family_information.dart';

class BrotherHVaguchayInfo extends StatefulWidget {
  const BrotherHVaguchayInfo({Key? key}) : super(key: key);

  @override
  State<BrotherHVaguchayInfo> createState() => _BrotherHVaguchayInfoState();
}

class _BrotherHVaguchayInfoState extends State<BrotherHVaguchayInfo> {
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
        title: const Text('Hecen Rhee M. Vaguchay',
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
                        Images.hecenProfile
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
                            ': ${VaguchayInformation.names[4]}'
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
                            ': ${VaguchayInformation.relationship[4]}'
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
                            ': ${VaguchayInformation.occupation[4]}'
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
                            ': ${VaguchayInformation.birthday[4]}'
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
                            ': ${VaguchayInformation.age[4]}'
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
