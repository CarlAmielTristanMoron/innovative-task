import 'package:flutter/material.dart';
import 'package:innovative_task1/Image/Images.dart';
import '../../Family_Info/Oñate_Family_Info/father_oñate_info.dart';
import '../../Family_Info/Oñate_Family_Info/mother_oñate_info.dart';
import '../../Family_Info/Oñate_Family_Info/oñate_info.dart';
import '../../Information/oñate_family_information.dart';

class OnateTabBarView extends StatefulWidget {
  const OnateTabBarView({Key? key}) : super(key: key);

  @override
  State<OnateTabBarView> createState() => _OnateTabBarViewState();
}

class _OnateTabBarViewState extends State<OnateTabBarView> {

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
                    Images.onateProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                  OnateInformation.names[0]
              ),
              subtitle: Text(
                  OnateInformation.relationship[0]
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OnateInfo()
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
                    Images.fatherOnateProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                  OnateInformation.names[1]
              ),
              subtitle: Text(
                  OnateInformation.relationship[1]
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FatherOnateInfo()
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
                    Images.motherOnateProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                  OnateInformation.names[2]
              ),
              subtitle: Text(
                  OnateInformation.relationship[2]
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MotherOnateInfo()
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
