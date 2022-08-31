import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Sliders and Checks',
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: _sliderEnable 
            ? (value) {
                setState(() {
                  _sliderValue = value;
                });
              }
            : null,
          ),
      
          const SizedBox(height: 50),

          /* Checkbox normal */
          /* Checkbox(
            activeColor: AppTheme.primary,
            value: _sliderEnable, 
            onChanged: (value) {
              setState(() {
                _sliderEnable = value ?? true;
              });
            },
          ),

          const SizedBox(height: 50), */

          /* Checkbox estilo lista */
          /* CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text(
              'Habilitar Slider',
              style: TextStyle(fontSize: 18),
            ),
            value: _sliderEnable, 
            onChanged: (value) => setState(() => _sliderEnable = value ?? true),
          ),

          const SizedBox(height: 50), */

          /* Switch normal para activar o desactivar algo */
          /* Switch(
            activeColor: AppTheme.primary,
            value: _sliderEnable, 
            onChanged: (value) => setState(() => _sliderEnable = value),
          ),

          const SizedBox(height: 50), */

          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text(
              'Habilitar Slider',
              style: TextStyle(fontSize: 18),
            ),
            value: _sliderEnable, 
            onChanged: (value) => setState(() => _sliderEnable = value),
          ),

          const SizedBox(height: 50),

          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://i.pinimg.com/originals/53/84/ad/5384adb2c0a0547f19d2d58aec5c5e6e.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),

          const SizedBox(height: 50),

          const AboutListTile(),

          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
