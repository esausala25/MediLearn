import 'package:flutter/material.dart';

//importaciones de firebase
import 'package:firebase_core/firebase_core.dart';
import 'package:medi_learn/screens/iniciosesion.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 110, 110, 110),
          textTheme: const TextTheme(
            headline6: TextStyle(
              color: Color.fromARGB(255, 8, 1, 1),
            ),
          ),
        ),
        home: const ScreenInicio());
  }
}