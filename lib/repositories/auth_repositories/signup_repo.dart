import 'package:firebase_auth/firebase_auth.dart';
import 'package:learnify_app/config/Components/snack_bar.dart';
class SignupRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> Signup({
    required String email,
    required String userName,
    required String password,
  }) async{
    try{
      final UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
         password: password);
         await userCredential.user?.updateDisplayName(userName);
        return userCredential.user;
    } on FirebaseAuthException catch(e){
      CustomSnackbar(e.toString());
    }
  }
}