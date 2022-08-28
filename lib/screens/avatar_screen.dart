import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stan Lee',
          style: TextStyle(fontSize: 35),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              backgroundImage: const NetworkImage('https://media.wired.com/photos/5be9d68a5d7c6a7b81d79e25/master/pass/StanLee-610719480.jpg'),
              child: const Text(
                'SL',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 120,
          backgroundImage: NetworkImage('https://media.wired.com/photos/5be9d68a5d7c6a7b81d79e25/master/pass/StanLee-610719480.jpg'),
        ),
      ),
    );
  }
}