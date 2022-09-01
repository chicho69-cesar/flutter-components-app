import 'dart:math' show Random;

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  final random = Random();

  double _width = 75;
  double _height = 75;
  Color _color = AppTheme.primary;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void changeShape() {
    setState(() {
      _width = random.nextInt(250).toDouble() + 75;
      _height = random.nextInt(250).toDouble() + 75;

      _color = Color.fromRGBO(
        random.nextInt(255), 
        random.nextInt(255), 
        random.nextInt(255), 
        1
      );

      _borderRadius = BorderRadius.circular(random.nextInt(50).toDouble() + 25);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Animated Container',
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(
            milliseconds: 400,
          ),
          curve: Curves.easeOutCubic,
          width: _width,
          height: _height,
          // Cuando usamos decoration no podemos usar color al mismo tiempo porque marca error
          // color: Colors.red,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(
          Icons.play_circle_outlined,
          size: 40,
        ),
      ),
    );
  }
}
