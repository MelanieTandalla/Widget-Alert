import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

void main() => runApp(const WidgetAlert());

class WidgetAlert extends StatelessWidget {
  const WidgetAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title: const Text('Widget Alert')),
          body: Container(
            padding: const EdgeInsets.all(16.0),
            child: BootstrapContainer(
              fluid: true,
              children: <Widget>[
                BootstrapCol(
                  child: const Text('Informe de perros callejeros', 
                     textAlign: TextAlign.center,
                     style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 6.0,
                      color: Color.fromRGBO(173, 75, 75, 1),
                      fontFamily: 'cursive'
                    ),)
                ),
                BootstrapCol(
                  sizes: 'col-lg-6',
                  child: Image.network('images/dogs2.jpg')
                ),
                BootstrapCol(
                  sizes: 'col-lg-6',
                  child: const Text('Hay ciertas verdades que todos sostenemos como evidentes. Una es que el entrenamiento básico es esencial para todos los perros. Un perro cuya conducta es “civilizada” es un miembro completamente participativo de la familia. Es más, si un perro desarrolla un problema conductual, el contar con fundamentación en entrenamiento básico, generalmente nos permite lidiar con el problema más eficiente y directamente. ¿Desea Seguir la lectura?',
                  style: TextStyle(
                      letterSpacing: 2.0,
                      fontFamily: 'cursive'
                  ),)
                ),
                Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: const Color.fromRGBO(4,6,3,1)
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                margin: const EdgeInsets.only(left: 300.0, right: 20.0),
                child: const Dialog(),
                
                  ),
              ]  ))),
            );
  }
}

class Dialog extends StatelessWidget {
  const Dialog({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          content: const Text('¿Desea salir de esta lectura?'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Salir'),
              child: const Text('Salir'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancelar'),
              child: const Text('Cancelar'),
            ),
          ],
        ),
      ),
      child: const Text('Salir de la lectura',
        style: TextStyle(
         fontSize: 20.0,
          color: Color.fromRGBO(173, 75, 75, 1),
          fontFamily: 'cursive',
         ),
      ),
    );
  }
}
