import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_theme.dart';

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
  bool isLoading = false;

  /* El metodo initState lo que hace es inicializar por primera y una unica vez 
  el estado del widget, esto lo usamos para crear un escuchador de eventos para
  el scroll */
  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      //print('${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}');
      if ((scrollController.position.pixels + 500) >= scrollController.position.maxScrollExtent) {
        // addTen();
        fetchData();
      }
    });
  }

  Future fetchData() async {
    if (isLoading) return;
    setState(() => isLoading = true);
    await Future.delayed(const Duration(seconds: 3));
    addTen();
    setState(() => isLoading = false);

    if (scrollController.position.pixels + 120 <= scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(
      scrollController.position.pixels + 120, 
      duration: const Duration(milliseconds: 300), 
      curve: Curves.easeInOut
    );
  }

  void addTen() {
    setState(() {
      final lastId = imagesIds.last;
      
      imagesIds.addAll(
        [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ].map((e) => lastId + e)
      );
    });
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId + 1);
    addTen();
  }

  @override
  Widget build(BuildContext context) {
    /* Mediante el objeto MediaQuery nos sirve para obtener contexto del celular en el que se esta
    ejecutando la aplicacion */
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,

      /* Mediante este widget podemos remover el espacio que hay en la parte superior 
      de la pantalla del celular */
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true, /* Removemos el padding superior */
        removeBottom: true, /* Removemos el espacio inferior */

        /* El widget Stack es un widget sumamente parecido a las columnas y a las filas, 
        solo que estos lo que nos permiten es colocar elementos uno encima de otro */
        child: Stack(
          children: [
            /* El widget RefreshIndicator nos permite hacer que cuando hagamos un pull arriba de todos
            los elementos los elementos que especifiquemos se refresquen */
            RefreshIndicator(
              onRefresh: onRefresh, // Ejecutamos la funcion que realizara la accion que queremos al refrescar
              color: AppTheme.primary,

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

            /* El widget positioned nos sirve para posicionar elementos especificos de un widget
            de tipo Stack, en alguna posicion especifica que necesitemos */
            if (isLoading)
              Positioned(
                bottom: 40,
                left: size.width * 0.5 - 30, // Aqui adquirimos la mitad de la pantalla y le restamos la mitad del ancho del loading (60)
                child: const _LoadingIcon()
              ),
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.8),
        shape: BoxShape.circle
      ),
      child: const CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }
}
