import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseDatabase {
  static CollectionReference subscribersEmail =
      FirebaseFirestore.instance.collection('SubscribersEmailList');
}
