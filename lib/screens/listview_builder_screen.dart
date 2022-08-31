import 'package:flutter/material.dart';

class ListviewBuilderScreen extends StatefulWidget {
  const ListviewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListviewBuilderScreen> createState() => _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState extends State<ListviewBuilderScreen> {
  final List<int> imagesIds = [
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10
  ];
  final ScrollController scrollController = ScrollController();

  /* El metodo initState lo que hace es inicializar por primera y una unica vez 
  el estado del widget, esto lo usamos para crear un escuchador de eventos para
  el scroll */
  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      //print('${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}');
      if ((scrollController.position.pixels + 500) > scrollController.position.maxScrollExtent) {
        addTen();
      }
    });
  }

  void addTen() {
    setState(() {
      final lastId = imagesIds.last;
      
      imagesIds.addAll(
        [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ].map((e) => lastId + e)
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      /* Mediante este widget podemos remover el espacio que hay en la parte superior 
      de la pantalla del celular */
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true, /* Removemos el padding superior */
        removeBottom: true, /* Removemos el espacio inferior */

        /* El widget de ListView.builder nos ayuda a hacer una carga peresoza de 
        las imagenes a las que estamos accediendo */
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          controller: scrollController,
          itemCount: imagesIds.length,
          itemBuilder: (BuildContext context, int index) {
            return FadeInImage(
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
              placeholder: const AssetImage('assets/jar-loading.gif'), 
              image: NetworkImage('https://picsum.photos/500/300?image=${ imagesIds[index] }')
            );
          },
        ),
      ),
    );
  }
}
