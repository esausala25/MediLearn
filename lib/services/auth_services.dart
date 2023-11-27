import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class FirebaseAuthService{
  final _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(String email, String password) async{
    
    try{
      UserCredential credential=  (await _auth.createUserWithEmailAndPassword(
        email: email, password: password));
        return credential.user;
    }catch(e){
      print("Ocurrio algun error");
      //print(e.toString());
    }
    return null;
  }
  Future<User?> signInWithEmailAndPassword(String email, String password) async{
    
    try{
      UserCredential credential=  (await _auth.signInWithEmailAndPassword(
        email: email, password: password));
        return credential.user;
    }catch(e){
      print("Ocurrio algun error");
      //print(e.toString());
    }
    return null;
  }
  Future<UserCredential> register(String email, String password ){
    return _auth.createUserWithEmailAndPassword(email: email, password: password,);
  }
  
}

