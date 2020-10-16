// import 'package:cloud_firestore/cloud_firestore.dart';

// class DataBaseService {
//   String uid;
//   DataBaseService({this.uid});
//   final CollectionReference userInfoCollection =
//       Firestore.instance.collection('userInfo');
//   //To Update User Data
//   Future updateUserData({String phoneNumber, String name}) async {
//     return await userInfoCollection.document(uid).setData({
//       'phoneNumber': phoneNumber,
//       'name': name,
//     });
//   }
// }
