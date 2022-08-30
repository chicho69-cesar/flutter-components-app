import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_theme.dart';

class CustomCardTypeTwo extends StatelessWidget {
  const CustomCardTypeTwo({
    Key? key, 
    required this.imageUrl,
    this.name
  }) : super(key: key);

  final String imageUrl;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Card(
      /* Un clipBehavior sirve para adaptar el contenido de los widgets a como nosotros queremos */
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.75),
      child: Column(
        children: [
          /* Image(
            // podemos renderizar imagenes del proyecto, de internet, etc.
            image: NetworkImage('https://th.bing.com/th/id/R.7d9c187d791b63bb4093dbcbbd50e71c?rik=RdJUoenWKUJ4%2bQ&riu=http%3a%2f%2fwallup.net%2fwp-content%2fuploads%2f2016%2f01%2f291874-landscape.jpg&ehk=xgym4ER5Od6t1%2b5FQmPoEzKZJAZWHeLYjZjvoh2yIOU%3d&risl=1&pid=ImgRaw&r=0')
          ) */

          FadeInImage(
            placeholder: const AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(imageUrl),
            width: double.infinity,
            height: 260,
            // fit aqui es como object-fit en css
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),

          if (name != null) 
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 20, bottom: 20),
              child: Text(
                name!,
                style: const TextStyle(fontSize: 18),
              ),
            )
        ],
      ),
    );
  }
}
