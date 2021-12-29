import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

class FirestoreDb {
  static Stream<List<MyProcessModel>> myProcessStream(
      String mail, String name) {
    return firebaseFirestore
        .collection('users')
        .doc(mail)
        .collection(name)
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

  static addCompany(
      MyProcessModel myProcessModel, String mail, String name) async {
    await firebaseFirestore
        .collection('users')
        .doc(mail)
        .collection(name)
        .doc(myProcessModel.company)
        .set({
      'process': myProcessModel.process,
    });
  }

  static updateProcess(
      MyProcessModel myProcessModel, String mail, String name) async {
    await firebaseFirestore
        .collection('users')
        .doc(mail)
        .collection(name)
        .doc(myProcessModel.company)
        .update({
      'process': myProcessModel.process,
    });
  }

  static deleteProcess(String company, String mail, String name) async {
    await firebaseFirestore
        .collection('users')
        .doc(mail)
        .collection(name)
        .doc(company)
        .delete();
  }

  static deleteAccount(String mail, String name) async {
    await firebaseFirestore
        .collection('users')
        .doc(mail)
        .collection(name)
        .get()
        .asStream()
        .forEach((element) {
      for (var element in element.docs) {
        element.reference.delete();
      }
    });
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
