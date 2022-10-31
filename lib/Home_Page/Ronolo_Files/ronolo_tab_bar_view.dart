import 'package:flutter/material.dart';
import 'package:innovative_task1/Family_Info/Ronolo_Family_Info/brother_ronolo_info.dart';
import 'package:innovative_task1/Family_Info/Ronolo_Family_Info/mother_ronolo_info.dart';
import 'package:innovative_task1/Family_Info/Ronolo_Family_Info/ronolo_info.dart';
import 'package:innovative_task1/Family_Info/Ronolo_Family_Info/sister2_ronolo_info.dart';
import 'package:innovative_task1/Family_Info/Ronolo_Family_Info/sister_ronolo_info.dart';
import 'package:innovative_task1/Image/Images.dart';
import 'package:innovative_task1/Information/ronolo_family_information.dart';

class RonoloTabBarView extends StatefulWidget {
  const RonoloTabBarView({Key? key}) : super(key: key);

  @override
  State<RonoloTabBarView> createState() => _RonoloTabBarViewState();
}

class _RonoloTabBarViewState extends State<RonoloTabBarView> {

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
                    Images.ronoloProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                  RonoloInformation.names[0]
              ),
              subtitle: Text(
                  RonoloInformation.relationship[0]
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RonoloInfo()
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
                    Images.motherRonoloProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                  RonoloInformation.names[1]
              ),
              subtitle: Text(
                  RonoloInformation.relationship[1]
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MotherRonoloInfo()
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
                    Images.dodongProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                  RonoloInformation.names[2]
              ),
              subtitle: Text(
                  RonoloInformation.relationship[2]
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BrotherRonoloInfo()
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
                    Images.jadeProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                  RonoloInformation.names[3]
              ),
              subtitle: Text(
                  RonoloInformation.relationship[3]
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SisterRonoloInfo()
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
                  Images.jelieProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                  RonoloInformation.names[4]
              ),
              subtitle: Text(
                  RonoloInformation.relationship[4]
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SisterTwoRonoloInfo()
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