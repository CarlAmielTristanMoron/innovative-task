import 'package:flutter/material.dart';
import 'package:innovative_task1/Image/Images.dart';
import 'package:innovative_task1/Information/vaguchay_family_information.dart';

class FatherVaguchayInfo extends StatefulWidget {
  const FatherVaguchayInfo({Key? key}) : super(key: key);

  @override
  State<FatherVaguchayInfo> createState() => _FatherVaguchayInfoState();
}

class _FatherVaguchayInfoState extends State<FatherVaguchayInfo> {
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
        title: const Text('Enrico P. Vaguchay Jr.',
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
                        Images.fatherVaguchayProfile
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
                            ': ${VaguchayInformation.names[1]}'
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
                            ': ${VaguchayInformation.relationship[1]}'
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
                            ': ${VaguchayInformation.occupation[1]}'
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
                            ': ${VaguchayInformation.birthday[1]}'
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
                            ': ${VaguchayInformation.age[1]}'
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
