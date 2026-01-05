import 'package:firebase_auth/firebase_auth.dart';

class LoginRepository {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<User?> login({
  required String email,
  required String password,
}) async {
  try {
    final result = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    
    );
    return result.user;
  
  } on FirebaseAuthException catch (e) {
    print(e.toString());
    throw e;
  }
}


















  // Future<User?> Login({
  //   required String email,
  //   required String password,
  // })async{
  //   try{
  //     await _auth.signInWithEmailAndPassword(
  //       email: email,
  //        password: password);
  //   }
  //   on FirebaseAuthException catch(e){
  //     CustomSnackbar(e.toString());
  //   }

  // }
  
}



