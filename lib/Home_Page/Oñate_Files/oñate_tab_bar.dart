import 'package:flutter/material.dart';
import 'package:innovative_task1/Home_Page/custom_shape.dart';
import 'package:innovative_task1/Image/Images.dart';

class OnateTabBar extends StatefulWidget {
  const OnateTabBar({Key? key}) : super(key: key);

  @override
  State<OnateTabBar> createState() => _OnateTabBarState();
}

class _OnateTabBarState extends State<OnateTabBar> {
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
                    height: 30,
                    width: 30,
                    fit: BoxFit.fill,
                    image: AssetImage(
                        Images.onateProfile
                    )
                ),
              ),
              const Text('Oñate',
                style: TextStyle(
                    fontSize: 10
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
