import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ubs/model/form_model.dart';

class FireBaseUtils {
  static CollectionReference<FormModel> getFormsCollection() =>
      FirebaseFirestore.instance.collection('Forms').withConverter<FormModel>(
            fromFirestore: (snapshot, options) =>
                FormModel.fromJson(snapshot.data()!),
            toFirestore: (formModel, options) => formModel.toJson(),
          );

  static Future<void> addFormToFireStore(FormModel form) {
    final formsCollection = getFormsCollection();
    final doc = formsCollection.doc();
    form.id = doc.id;
    return doc.set(form);
  }

  static Future<void> updateFormToFireStore(FormModel form) {
    final formsCollection = getFormsCollection();
    final doc = formsCollection.doc(form.id);
    doc.delete();
    final doc2 = formsCollection.doc();
    form.id = doc2.id;
    return doc2.set(form);
  }

  static Future<List<FormModel>> getAllFormsFromFireStore() async {
    final formsCollection = getFormsCollection();
    final snapshot = await formsCollection.get();
    return snapshot.docs.map((doc) => doc.data()).toList();
  }

  static Future<void> deleteFormFromFireStore(FormModel form) {
    final formsCollection = getFormsCollection();
    final doc = formsCollection.doc(form.id);
    return doc.delete();
  }
}
