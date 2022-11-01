import 'package:flutter/material.dart';
import 'package:innovative_task1/Home_Page/custom_shape.dart';
import 'package:innovative_task1/Image/Images.dart';

class VaguchayTabBar extends StatefulWidget {
  const VaguchayTabBar({Key? key}) : super(key: key);

  @override
  State<VaguchayTabBar> createState() => _VaguchayTabBarState();
}

class _VaguchayTabBarState extends State<VaguchayTabBar> {
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: CustomPaint(
        painter: CustomShape(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: const Image(
                    height: 28,
                    width: 28,
                    fit: BoxFit.fill,
                    image: AssetImage(
                        Images.vaguchayProfile
                    )
                ),
              ),
              const Text('Vaguchay',
                style: TextStyle(
                    fontSize: 7.34
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
