import 'package:flutter/material.dart';
import 'package:innovative_task1/Family_Info/Moron_Family_Info/father_moron_info.dart';
import 'package:innovative_task1/Family_Info/Moron_Family_Info/moron_info.dart';
import 'package:innovative_task1/Family_Info/Moron_Family_Info/mother_moron_info.dart';
import 'package:innovative_task1/Information/moron_family_information.dart';
import 'package:innovative_task1/Image/Images.dart';

class MoronTabBarView extends StatefulWidget {
  const MoronTabBarView({Key? key}) : super(key: key);

  @override
  State<MoronTabBarView> createState() => _MoronTabBarViewState();
}

class _MoronTabBarViewState extends State<MoronTabBarView> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          Card(
            elevation: 10,
            shadowColor: Colors.purpleAccent,
            child: ListTile(
              leading: const Image(
                image: AssetImage(
                  Images.moronProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                MoronInformation.names[0]
              ),
              subtitle: Text(
                MoronInformation.relationship[0]
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MoronInfo()
                  )
                );
              },
            ),
          ),
          Card(
            elevation: 10,
            shadowColor: Colors.purpleAccent,
            child: ListTile(
              leading: const Image(
                image: AssetImage(
                  Images.fatherMoronProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                MoronInformation.names[1]
              ),
              subtitle: Text(
                MoronInformation.relationship[1]
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FatherMoronInfo()
                  )
                );
              },
            ),
          ),
          Card(
            elevation: 10,
            shadowColor: Colors.purpleAccent,
            child: ListTile(
              leading: const Image(
                image: AssetImage(
                  Images.motherMoronProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                MoronInformation.names[2]
              ),
              subtitle: Text(
                MoronInformation.relationship[2]
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MotherMoronInfo()
                  )
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
