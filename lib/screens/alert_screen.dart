import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogAndriod(BuildContext context) {
    showDialog(
      barrierDismissible: false, // cerrar la alerta en la sombra
      context: context, 
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(15)
          ),
          title: const Text(
            'Titulo de la alerta',
            style: TextStyle(fontSize: 25),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min, // determinamos el alto maximo de una columna
            children: const [
              Text(
                'Contenido de la alerta',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text(
                'Cancelar',
                style: TextStyle(fontSize: 18, color: Colors.red),
              )
            ),
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text(
                'Ok',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        );
      }
    );
  }

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text(
            'Titulo de la alerta',
            style: TextStyle(fontSize: 25),
          ),
          content: Column(
            children: const [
              Text(
                'Contenido de la alerta',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text(
                'Cancelar',
                style: TextStyle(fontSize: 18, color: Colors.red),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text(
                'Ok',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Alerts Widget',
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          // onPressed: () => displayDialogAndriod(context),
          onPressed: () => Platform.isAndroid // determinamos en que plataforma estamos
            ? displayDialogAndriod(context) 
            : displayDialogIOS(context),
          /* style: ElevatedButton.styleFrom(
            primary: AppTheme.primary,
            shape: const StadiumBorder(),
            elevation: 10,
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          ), */
          child: const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              'Mostrar alerta',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.close),
      ),
    );
  }
}
