import 'package:bloc_architecture_app/presentation/screens/counter_screen/widgets/animated_circles.dart';
import 'package:bloc_architecture_app/presentation/screens/counter_screen/widgets/counter_slider.dart';
import 'package:bloc_architecture_app/presentation/screens/counter_screen/widgets/counter_value.dart';
import 'package:bloc_architecture_app/presentation/screens/counter_screen/widgets/plasma_background.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PlasmaBackground(),
          Positioned(
            top: 10.0.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                AnimatedCircles(),
                CounterValue(),
              ],
            ),
          ),
          Positioned(bottom: 8.0.h, child: CounterSlider()),
        ],
      ),
    );
  }
}
