import 'package:flutter/material.dart';
import 'package:innovative_task1/Image/Images.dart';
import 'package:innovative_task1/Information/moron_family_information.dart';

class MoronInfo extends StatefulWidget {
  const MoronInfo({Key? key}) : super(key: key);

  @override
  State<MoronInfo> createState() => _MoronInfoState();
}

class _MoronInfoState extends State<MoronInfo> {
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
        title: const Text('Carl Amiel Tristan C. Moron',
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
                      Images.moronProfile
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
                        ': ${MoronInformation.names[0]}'
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
                        ': ${MoronInformation.relationship[0]}'
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
                        ': ${MoronInformation.occupation[0]}'
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
                        ': ${MoronInformation.birthday[0]}'
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
                        ': ${MoronInformation.age[0]}'
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
