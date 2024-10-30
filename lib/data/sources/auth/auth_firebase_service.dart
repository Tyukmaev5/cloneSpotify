import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthFirebaseService {
  Future<void> signup();
  Future<void> signin();
}

class AuthFirebaseServiceImpl implements AuthFirebaseService {
  @override
  Future<void> signin() {
    // TODO: implement signin
    throw UnimplementedError();
  }

    @override
  Future<void> signup() async {
     try {

      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

     } on FirebaseAuthException catch (e) {
       if (e.code == 'weak-password') {
         print('The password provided is too weak.');
       } else if (e.code == 'email-already-in-use') {
         print('The account already exists for that email.');
       }
     } catch (e) {
       print(e);
     }
  }
}
