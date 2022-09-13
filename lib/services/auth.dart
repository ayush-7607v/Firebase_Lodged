import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService{

final FirebaseAuth _authvar= FirebaseAuth.instance;


Future signInAnon() async{

 try {
         UserCredential result = await _authvar.signInAnonymously();
         User? user_var = result.user;

// ............................posiible err0r....................................
         
         return user_var;
    } 

// if this error give then below statement run
    catch (e) {
      print(e.toString());
      return null;
    }
  }
// The classes have been renamed. 'AuthResult' has been renamed to 'UserCredential' and 'FirebaseUser' is renamed to 'User'





}



