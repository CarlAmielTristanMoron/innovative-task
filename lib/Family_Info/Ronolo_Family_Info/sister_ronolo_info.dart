import 'package:flutter/material.dart';
import 'package:innovative_task1/Image/Images.dart';
import 'package:innovative_task1/Information/ronolo_family_information.dart';

class SisterRonoloInfo extends StatefulWidget {
  const SisterRonoloInfo({Key? key}) : super(key: key);

  @override
  State<SisterRonoloInfo> createState() => _SisterRonoloInfoState();
}

class _SisterRonoloInfoState extends State<SisterRonoloInfo> {
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
        title: const Text('Jade Ronolo',
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
                        Images.jadeProfile
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
                            ': ${RonoloInformation.names[3]}'
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
                            ': ${RonoloInformation.relationship[3]}'
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
                            ': ${RonoloInformation.occupation[3]}'
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
                            ': ${RonoloInformation.birthday[3]}'
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
                            ': ${RonoloInformation.age[3]}'
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