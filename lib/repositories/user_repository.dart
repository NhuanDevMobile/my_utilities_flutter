import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserRepository {
  final FirebaseAuth _firebaseAuth;

  UserRepository()
      : _firebaseAuth = FirebaseAuth.instance;

  Future<void> signInWithCredentials(String email, String password) {
    return _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  Future<String> signUp(String email, String password) async {
    // return await _firebaseAuth.createUserWithEmailAndPassword(
    //   email: email,
    //   password: password,
    // );
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password
      );
      final User? user = userCredential.user;
      CollectionReference users = FirebaseFirestore.instance.collection('users');
      users.add({
        'userId': "${user!.uid}",
        'fullName': "", // John Doe
        'age': "", // Stokes and Sons
        'avatar':"",
        'phone':"",
        'mail':user.email
      });
      return 'Success';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        return 'The account already exists for that email.';
      }
    } catch (e) {
     return "Er";
    }
    return "";
  }

  Future<Future<List<void>>> signOut() async {
    return Future.wait([_firebaseAuth.signOut()]);
  }

  Future<bool> isSignedIn() async {
    final currentUser = await _firebaseAuth.currentUser;
    return currentUser != null;

  }

  Future<User> getUser() async {
    return await _firebaseAuth.currentUser!;
  }

}