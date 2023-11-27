import 'package:flutter/material.dart';

class Pantallap extends StatefulWidget {
  const Pantallap({Key? key}) : super(key: key);

  @override
  State<Pantallap> createState() => _PantallapState();
}

class _PantallapState extends State<Pantallap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MediLearn'),
        actions: [
          IconButton(
            icon: const Icon(Icons.campaign_sharp),
            onPressed: () {
              // Acción al presionar el IconButton
              print('Configuración presionada');
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Botones en la parte superior del cuerpo
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Acción al presionar el botón de Libros
                  print('Botón Libros presionado');
                },
                child: const Text('Libros'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Acción al presionar el botón de Sugerencias
                  print('Botón Sugerencias presionado');
                },
                child: const Text('Sugerencias'),
              ),
            ],
          ),
          // Lista de fotos con descripciones
          Expanded(
            child: ListView(
              children: [
                _buildListTile('assets/atlas.jfif', 'Atlas de Anatomia Humana', 'Frank H. Netter'),
                _buildListTile('assets/medicinainterna.jfif', 'Medicina Interna','Farreras Rozman'),
                _buildListTile('assets/traumatologia.jfif', 'Urgencias de Traumatologia','Mario Holgado'),
                _buildListTile('assets/cardilogia.jfif', 'Tratado de cardiologia','Zipes, Libby, Bonow, Mann, Tomaselli'),
                _buildListTile('assets/neurociencia.jfif', 'Principios de neurociencia, Aplicaciones basicas y clinicas','Duane E. Haines'),
                _buildListTile('assets/fisiologia medica.jfif', 'Tratado de Fisiologia Medica, decimosegunda edicion','Guyton y Hall'),
                _buildListTile('assets/observacion.jfif', 'Medicina de observacion','F. Javier Montero Perez'),
                _buildListTile('assets/radiologia.jfif', 'Radiologia de urgencias y emergencias','Nigel Raby, Laurence Berman, Simon Morley, Gerald de Lacey'),
                // Agrega más elementos según sea necesario
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Opciones de Usuario',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Mi perfil'),
              onTap: () {
                // Acción al seleccionar 'Mi perfil'
                print('Mi perfil seleccionado');
              },
            ),
            ListTile(
              title: const Text('Chat con administrador'),
              onTap: () {
                // Acción al seleccionar 'Chat con administrador'
                print('Chat con administrador seleccionado');
              },
            ),
            ListTile(
              title: const Text('Descargas'),
              onTap: () {
                // Acción al seleccionar 'Descargas'
                print('Descargas seleccionado');
              },
            ),
            ListTile(
              title: const Text('Suscripciones'),
              onTap: () {
                // Acción al seleccionar 'Suscripciones'
                print('Suscripciones seleccionado');
              },
            ),
            ListTile(
              title: const Text('Mis intereses'),
              onTap: () {
                // Acción al seleccionar 'Mis intereses'
                print('Mis intereses seleccionado');
              },
            ),
            ListTile(
              title: const Text('Personalizar mi librería'),
              onTap: () {
                // Acción al seleccionar 'Personalizar mi librería'
                print('Personalizar mi librería seleccionado');
              },
            ),
          ],
        ),
      ),
    );
  }
 Widget _buildListTile(String imagePath, String description, String author) {
  return ListTile(
    contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
    leading: Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imagePath),
        ),
      ),
    ),
    title: Text(description),
    subtitle: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Autor: $author'),
        IconButton(
          icon: const Icon(Icons.download),
          onPressed: () {
            // Acción al presionar el IconButton
            print('Más información sobre $description');
          },
        ),
      ],
    ),
    onTap: () {
      // Acción al hacer clic en un elemento de la lista
      print('$description seleccionado');
    },
  );
}

}