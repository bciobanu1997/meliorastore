import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseDatabase {
  final Stream<QuerySnapshot> subscribersEmailList =
      FirebaseFirestore.instance.collection('SubscribersEmailList').snapshots();
/*  final CollectionReference subscribersEmailList =
      FirebaseFirestore.instance.collection('SubscribersEmailList');
      Future updateUserData(String subscribersEmail)async{
        return await subscribersEmailList.doc
      }*/
}
