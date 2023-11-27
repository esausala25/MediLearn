import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getUsuarios() async {
  List users = [];
  CollectionReference collectionReferenceUsuarios = db.collection('usuarios');

  QuerySnapshot queryUsuarios = await collectionReferenceUsuarios.get();
  
  // ignore: avoid_function_literals_in_foreach_calls
  queryUsuarios.docs.forEach((documento){
    users.add(documento.data());
  });

  return users;
}

//Guardar informacion en la base de datos
Future<void> addUsuarios(String nombreCompleto, String email, String telefono, String fechaNacimiento) async{
  await db.collection('usuarios').add({"nombreCompleto": nombreCompleto, "email":email, 'telefono':telefono, 'fechaNacimiento':fechaNacimiento});
}