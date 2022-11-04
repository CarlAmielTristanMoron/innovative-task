import 'package:flutter/material.dart';
import 'package:innovative_task1/Family_Info/Pacheo_Family_Info/grandmother_pacheo_info.dart';
import 'package:innovative_task1/Family_Info/Pacheo_Family_Info/mother_pacheo_info.dart';
import '../../Family_Info/Pacheo_Family_Info/pacheo_info.dart';
import '../../Information/pacheo_family_information.dart';
import 'package:innovative_task1/Image/Images.dart';

class PacheoTabBarView extends StatefulWidget {
  const PacheoTabBarView({Key? key}) : super(key: key);

  @override
  State<PacheoTabBarView> createState() => _PacheoTabBarViewState();
}

class _PacheoTabBarViewState extends State<PacheoTabBarView> {

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
                    Images.pacheoProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                  PacheoInformation.names[0]
              ),
              subtitle: Text(
                  PacheoInformation.relationship[0]
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PacheoInfo()
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
                    Images.grandmotherPacheoProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                  PacheoInformation.names[1]
              ),
              subtitle: Text(
                  PacheoInformation.relationship[1]
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GrandMotherPacheoInfo()
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
                    Images.motherPacheoProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                  PacheoInformation.names[2]
              ),
              subtitle: Text(
                  PacheoInformation.relationship[2]
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MotherPacheoInfo()
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
