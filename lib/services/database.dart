import 'package:cloud_firestore/cloud_firestore.dart';

class DataBaseService {
  String uid;
  DataBaseService({this.uid});
  final CollectionReference userInfoCollection =
      Firestore.instance.collection('userInfo');
  // List<Brew> _brewListfromSnapshot(QuerySnapshot snapshot){
  //    return snapshot.documents.map((doc){
  //      return Brew(name: doc.data['name'] ?? 'Anonymous',strength: doc.data['strength'] ?? 0,sugar: doc.data['sugar'] ?? '0');
  //    }).toList();
  // }
  //To Update User Data
  Future updateUserData({String phoneNumber, String name}) async {
    return await userInfoCollection.document(uid).setData({
      'phoneNumber': phoneNumber,
      'name': name,
    });
  }
  // Stream<List<Brew>> get brews{
  //   return brewCollection.snapshots().map(_brewListfromSnapshot);
  // }
}
