import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getUsers() async {
  List users = [];

  CollectionReference usersCollection = db.collection('users');

  QuerySnapshot usersQuery = await usersCollection.get();

  usersQuery.docs.forEach((element) {
    users.add(element.data());
  });
  
  //Simulamos una demora de 5 segundos
  //await Future.delayed(Duration(seconds: 5));
  return users;
}