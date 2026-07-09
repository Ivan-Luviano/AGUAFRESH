class UserModel {
  final String uid;
  final String nombre;
  final String apellidoPaterno;
  final String apellidoMaterno;
  final String email;

  UserModel({
    required this.uid,
    required this.nombre,
    required this.apellidoPaterno,
    required this.apellidoMaterno,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'nombre': nombre,
      'apellidoPaterno': apellidoPaterno,
      'apellidoMaterno': apellidoMaterno,
      'email': email,
    };
  }
}