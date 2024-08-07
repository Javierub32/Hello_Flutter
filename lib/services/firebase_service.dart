import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getUsers() async {
  List users = [];

  CollectionReference usersCollection = db.collection('users');

  QuerySnapshot usersQuery = await usersCollection.get();

  for (var doc in usersQuery.docs) {
    final Map data = doc.data() as Map;
    final user ={
      'nombre': data['nombre'],
      'id': doc.id,
    };
    users.add(user);
  }
  
  //Simulamos una demora de 5 segundos
  //await Future.delayed(Duration(seconds: 5));
  return users;
}

//Añadir un usuario
Future<void> addUser(String nombre) async {
  CollectionReference usersCollection = db.collection('users');

  await usersCollection.add({
    'nombre': nombre,
  });
}

//Actualizar un usuario
Future<void> updateUser(String nombre, String id) async {
  CollectionReference usersCollection = db.collection('users');

  await usersCollection.doc(id).update({
    'nombre': nombre,
  });
}

//Eliminar un usuario
Future<void> deleteUser(String id) async {
  CollectionReference usersCollection = db.collection('users');

  await usersCollection.doc(id).delete();
}