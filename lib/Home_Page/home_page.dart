import 'package:flutter/material.dart';
import 'package:innovative_task1/Home_Page/Moron_Files/moron_tab_bar.dart';
import 'package:innovative_task1/Home_Page/Moron_Files/moron_tab_bar_view.dart';
import 'package:innovative_task1/Image/Images.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  late TabController controller = TabController(length: 8, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.deepPurple,
                      Colors.purple,
                      Colors.purpleAccent
                    ]
                  )
                ),
                accountName: Text('Innovative Task',
                  style: TextStyle(
                    fontWeight: FontWeight.bold),
                ),
                accountEmail: Text('Group3@gmail.com',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
                currentAccountPictureSize: Size(
                  120,
                  120
                ),
                currentAccountPicture: Image(
                  image: AssetImage(
                    Images.drawerLogo
                  )
                )
              ),
              Divider(
                color: Colors.purpleAccent,
                height: 1,
                thickness: 2,
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                title: Text('Profile',
                  style: TextStyle(
                    color: Colors.black
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.black
                ),
                title: Text('Settings',
                  style: TextStyle(
                    color: Colors.black
                  ),
                ),
              ),
              AboutListTile(
                icon: Icon(
                  Icons.help,
                  color: Colors.black
                ),
                applicationIcon: Icon(
                  Icons.local_play,
                  color: Colors.black,
                ),
                applicationName: 'My Cool App',
                applicationVersion: '1.0.25',
                applicationLegalese: '© 2019 Company',
                child: Text('About',
                  style: TextStyle(
                    color: Colors.black
                  )
                ),
              )
            ],
          ),
        ),
      ),
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
          child: Padding(
            padding: const EdgeInsets.fromLTRB(50, 10, 0, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Innovative Task #1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text('Group 3',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontStyle: FontStyle.italic
                  ),
                )
              ],
            ),
          ),
        ),
        bottom: TabBar(
          controller: controller,
          isScrollable: true,
          tabs: const [
            MoronTabBar(),
          ]
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: const [
          MoronTabBarView()
        ]
      ),
    );
  }
}
