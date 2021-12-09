import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

class FirestoreDb {
  static Stream<List<MyProcessModel>> myProcessStream(String name) {
    return firebaseFirestore
        .collection('users')
        .doc(name)
        .collection('list')
        .snapshots()
        .map((QuerySnapshot query) {
      List<MyProcessModel> myProcessList = [];
      for (var myProcess in query.docs) {
        final myProcessModel =
            MyProcessModel.fromDocumentSnapshot(documentSnapshot: myProcess);
        myProcessList.add(myProcessModel);
      }
      return myProcessList;
    });
  }

  static addCompany(MyProcessModel myProcessModel, String name) async {
    await firebaseFirestore
        .collection('users')
        .doc(name)
        .collection('list')
        .doc(myProcessModel.company)
        .set({
      'process': myProcessModel.process,
    });
  }

  static updateProcess(MyProcessModel myProcessModel, String name) async {
    await firebaseFirestore
        .collection('users')
        .doc(name)
        .collection('list')
        .doc(myProcessModel.company)
        .update({
      'process': myProcessModel.process,
    });
  }

  static deleteProcess(String company, String name) async {
    await firebaseFirestore
        .collection('users')
        .doc(name)
        .collection('list')
        .doc(company)
        .delete();
  }
}

class MyProcessModel {
  late String company;
  late String process;

  MyProcessModel({
    required this.company,
    required this.process,
  });

  MyProcessModel.fromDocumentSnapshot(
      {required DocumentSnapshot documentSnapshot}) {
    company = documentSnapshot.id;
    process = documentSnapshot["process"];
  }
}
