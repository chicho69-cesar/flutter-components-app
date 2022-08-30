import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_theme.dart';

class CustomCardTypeOne extends StatelessWidget {
  const CustomCardTypeOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined, 
              color: AppTheme.primary,
              size: 20,
            ),
            title: Text(
              'Soy un titulo',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text(
              'Sint minim nisi ullamco est exercitation culpa. Nisi qui esse ipsum laboris. Aliqua culpa laboris dolore eiusmod dolor velit velit ea in velit veniam.',
              style: TextStyle(fontSize: 16),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () { },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                TextButton(
                  onPressed: () { }, 
                  child: const Text(
                    'Ok',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}