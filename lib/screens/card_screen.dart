import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Card Widget', 
            style: TextStyle(fontSize: 25)
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10
        ),
        children: const [
          CustomCardTypeOne(),
          CustomCardTypeTwo(
            imageUrl: 'https://th.bing.com/th/id/R.df15cfde80efb85071d5b1637090d1ac?rik=qpRA%2fGcvxASmKQ&riu=http%3a%2f%2fwallup.net%2fwp-content%2fuploads%2f2015%2f12%2f221663-nature-landscape-mountain-clouds-sunset-cottage-summer-Austria.jpg&ehk=GpSv7%2f3VwTcKTokXHtyceoR4i8xjNYn2D5OCu%2fRMyQM%3d&risl=&pid=ImgRaw&r=0',
          ),
          CustomCardTypeTwo(
            imageUrl: 'https://th.bing.com/th/id/R.7d9c187d791b63bb4093dbcbbd50e71c?rik=RdJUoenWKUJ4%2bQ&riu=http%3a%2f%2fwallup.net%2fwp-content%2fuploads%2f2016%2f01%2f291874-landscape.jpg&ehk=xgym4ER5Od6t1%2b5FQmPoEzKZJAZWHeLYjZjvoh2yIOU%3d&risl=1&pid=ImgRaw&r=0',
            name: null
          ),
          CustomCardTypeTwo(
            imageUrl: 'https://th.bing.com/th/id/R.9b0998672d2965ed90923c2af61c907c?rik=1Clj14CNO9KH%2bg&pid=ImgRaw&r=0',
            name: 'Montañas hermosas'
          ),
          SizedBox(height: 30)
        ],
      ),
    );
  }
}