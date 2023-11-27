import 'package:flutter/material.dart';
import 'package:medi_learn/screens/pantallaprincipal.dart';
import 'package:medi_learn/screens/registro.dart';

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class ScreenInicio extends StatefulWidget {
  const ScreenInicio({super.key});

  @override
  State<ScreenInicio> createState() => _ScreenInicioState();
}

class _ScreenInicioState extends State<ScreenInicio> {
  late String email, password;
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        key: _formkey,
        home: Scaffold(body: cuerpo(context)));
  }
}

Widget cuerpo(context) {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/fondo.jpg'),
            fit: BoxFit.cover)),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          logo(),
          nombre(),
          campoUsuario(),
          campoContrasena(context),
          botonEntrar(context),
          const Divider(
            height: 60,
          ),
          botonRegistro(context)
        ],
      ),
    ),
  );
}
Widget logo() {
  return Container(
    alignment: Alignment.center,
    width: 100,
    height: 100,
    child: Image.asset('assets/logo.png'),
  );
}
Widget nombre() {
  return const Text(
    "Bienvenido a MediLearn",
    style: TextStyle(
        color: Colors.white, fontSize: 23.0, fontWeight: FontWeight.bold),
  );
}
Widget campoUsuario() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
        onChanged: (String? value) {
          email = value;
        },
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
          hintText: "Correo electronico",
          fillColor: Colors.white,
          filled: true,
        )),
  );
}

Widget campoContrasena(context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
        onChanged: (String? value) {
          email = value;
        },
        obscureText: true,
        controller: passwordController,
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
          hintText: "Contraseña",
          fillColor: Colors.white,
          filled: true,
        )),
  );
}
Widget botonEntrar(BuildContext context) {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: ElevatedButton(
        onPressed: () {
          String email = emailController.text;
          String password = passwordController.text;
              

              // Verifica si los campos obligatorios están vacíos
              if (email.isEmpty || password.isEmpty) {
                // Muestra un mensaje de error si algún campo está vacío
                
                print('Error');
              } else {
                // Realiza las acciones necesarias para enviar la denuncia
                // Por ejemplo, puedes mostrar un mensaje de éxito o realizar una solicitud de envío de denuncia.

                // Limpiar los campos después de enviar la denuncia
                emailController.clear();
                passwordController.clear();

                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Pantallap()));

                // Muestra una notificación de éxito
                
                print('Sesion enviada');
              }
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[900],),
        child: const Text("Iniciar"),
      ));
}
Widget botonRegistro(BuildContext context) {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: TextButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Registro()));
        },
        child: const Text(
          "¿No tienes cuenta? Registrate",
          textAlign: TextAlign.right,
          style: TextStyle(
          color: Colors.white, // Cambiar el color del texto a rojo
        ),
        ),
      ));
}