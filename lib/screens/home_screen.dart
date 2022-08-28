import 'package:flutter/material.dart';

// import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // final menuOptions = AppRoutes.menuOptions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Componentes en Flutter', style: TextStyle(fontSize: 35)),
        ),
      ),
      body: ListView.separated(
        itemCount: AppRoutes.menuOptions.length,
        itemBuilder: (context, index) => ListTile(
          leading: Icon(AppRoutes.menuOptions[index].icon, color: AppTheme.primary,),
          title: Text(
            AppRoutes.menuOptions[index].name,
            style: const TextStyle(fontSize: 30),
          ),
          onTap: () {
            /* final route = MaterialPageRoute(
              builder: (context) => const Listview1Screen()
            );
            // Navegamos hacia la ruta que definimos anteriormente
            Navigator.push(context, route); */

            Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
