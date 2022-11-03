import 'package:flutter/material.dart';
import 'package:innovative_task1/Image/Images.dart';
import 'package:innovative_task1/Information/nacario_family_information.dart';

import '../../Family_Info/Nacario_Family_Info/brother_nacario_info.dart';
import '../../Family_Info/Nacario_Family_Info/father_nacario_info.dart';
import '../../Family_Info/Nacario_Family_Info/mother_nacario_infor.dart';
import '../../Family_Info/Nacario_Family_Info/nacario_info.dart';

class NacarioTabBarView extends StatefulWidget {
  const NacarioTabBarView({Key? key}) : super(key: key);

  @override
  State<NacarioTabBarView> createState() => _NacarioTabBarViewState();
}

class _NacarioTabBarViewState extends State<NacarioTabBarView> {

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
                    Images.kennNacarioProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                  NacarioInformation.names[0]
              ),
              subtitle: Text(
                  NacarioInformation.relationship[0]
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NacarioInfo()
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
                    Images.brotherNacarioProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                  NacarioInformation.names[1]
              ),
              subtitle: Text(
                  NacarioInformation.relationship[1]
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BrotherNacarioInfo()
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
                    Images.fatherNacarioProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                  NacarioInformation.names[2]
              ),
              subtitle: Text(
                  NacarioInformation.relationship[2]
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FatherNacarioInfo()
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
                    Images.motherNacarioProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                  NacarioInformation.names[3]
              ),
              subtitle: Text(
                  NacarioInformation.relationship[3]
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MotherNacarioInfo()
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
