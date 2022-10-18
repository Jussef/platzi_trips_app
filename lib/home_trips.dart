import 'package:flutter/material.dart';
import 'review_list.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {

  String descriptionDummy = '''Viene el gran reto, es momento de poner a prueba todo lo que has aprendido.
Analiza la siguiente interfaz, observa los widgets, colores, formas, mira que muchos de ellos los construímos durante el curso.''';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace('Bahamas', 2.5, descriptionDummy),
            ReviewList("assets/img/a.jpeg", "Daniel Jussef", "Developer", "Es un tipo frio y calculador"),
            ReviewList("assets/img/b.jpeg", "Jessie", "Socio", "Es muy rudo"),
            ReviewList("assets/img/c.jpeg", "Skiler", "Novia", "Es muy señora"),
            ReviewList("assets/img/d.jpeg", "Walter Jr", "Hijo", "Es chillon"),
            ReviewList("assets/img/e.jpeg", "Hank", "DEA", "Es un master menos al final"),
          ],
        ),
        HeaderAppbar()
      ],
    );
  }

}