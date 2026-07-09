import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/user_model.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // ==========================
  // LOGIN
  // ==========================
  Future<UserCredential> login({
    required String email,
    required String password,
  }) async {
    return await _auth.signInWithEmailAndPassword(
      email: email.trim(),
      password: password.trim(),
    );
  }

  // ==========================
  // REGISTRO
  // ==========================
  Future<void> register({
    required String nombre,
    required String apellidoPaterno,
    required String apellidoMaterno,
    required String email,
    required String password,
  }) async {

    final credential =
        await _auth.createUserWithEmailAndPassword(
      email: email.trim(),
      password: password.trim(),
    );

    final user = UserModel(
      uid: credential.user!.uid,
      nombre: nombre,
      apellidoPaterno: apellidoPaterno,
      apellidoMaterno: apellidoMaterno,
      email: email,
    );

    await _firestore
        .collection("usuarios")
        .doc(user.uid)
        .set({
      ...user.toMap(),

      "rol": "usuario",

      "fechaRegistro": FieldValue.serverTimestamp(),
    });
  }

  // ==========================
  // RECUPERAR CONTRASEÑA
  // ==========================
  Future<void> resetPassword(String email) async {
    await _auth.sendPasswordResetEmail(
      email: email.trim(),
    );
  }

  // ==========================
  // LOGOUT
  // ==========================
  Future<void> logout() async {
    await _auth.signOut();
  }

  User? get currentUser => _auth.currentUser;
}