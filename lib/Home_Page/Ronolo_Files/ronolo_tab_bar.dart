import 'package:flutter/material.dart';
import 'package:innovative_task1/Home_Page/custom_shape.dart';
import 'package:innovative_task1/Image/Images.dart';

class RonoloTabBar extends StatefulWidget {
  const RonoloTabBar({Key? key}) : super(key: key);

  @override
  State<RonoloTabBar> createState() => _RonoloTabBarState();
}

class _RonoloTabBarState extends State<RonoloTabBar> {
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
                        Images.ronoloProfile
                    )
                ),
              ),
              const Text('Ronolo',
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