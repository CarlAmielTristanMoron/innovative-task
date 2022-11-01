import 'package:flutter/material.dart';
import '../../Family_Info/Vaguchay_Family_Info/brother_h_vaguchay.dart';
import '../../Family_Info/Vaguchay_Family_Info/brother_j_vaguchay.dart';
import '../../Family_Info/Vaguchay_Family_Info/father_vaguchay_info.dart';
import '../../Family_Info/Vaguchay_Family_Info/mother_vaguchay_info.dart';
import '../../Family_Info/Vaguchay_Family_Info/sister_vaguchay_info.dart';
import '../../Family_Info/Vaguchay_Family_Info/vaguchay_info.dart';
import '../../Information/vaguchay_family_information.dart';
import '../../Image/Images.dart';

class VaguchayTabBarView extends StatefulWidget {
  const VaguchayTabBarView({Key? key}) : super(key: key);

  @override
  State<VaguchayTabBarView> createState() => _VaguchayTabBarViewState();
}

class _VaguchayTabBarViewState extends State<VaguchayTabBarView> {

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
                    Images.vaguchayProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                  VaguchayInformation.names[0]
              ),
              subtitle: Text(
                  VaguchayInformation.relationship[0]
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VaguchayInfo()
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
                    Images.fatherVaguchayProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                  VaguchayInformation.names[1]
              ),
              subtitle: Text(
                  VaguchayInformation.relationship[1]
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FatherVaguchayInfo()
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
                    Images.motherVaguchayProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                  VaguchayInformation.names[2]
              ),
              subtitle: Text(
                  VaguchayInformation.relationship[2]
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MotherVaguchayInfo()
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
                    Images.arylProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                  VaguchayInformation.names[3]
              ),
              subtitle: Text(
                  VaguchayInformation.relationship[3]
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SisterVaguchayInfo()
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
                    Images.hecenProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                  VaguchayInformation.names[4]
              ),
              subtitle: Text(
                  VaguchayInformation.relationship[4]
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BrotherHVaguchayInfo()
                    )
                );
              },
            ),
          ),       Card(
            elevation: 10,
            shadowColor: Colors.purpleAccent,
            child: ListTile(
              leading: const Image(
                image: AssetImage(
                    Images.jongProfile
                ),
                height: 60,
                width: 60,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.purpleAccent,
              ),
              title: Text(
                  VaguchayInformation.names[5]
              ),
              subtitle: Text(
                  VaguchayInformation.relationship[5]
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BrotherJVaguchayInfo()
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
