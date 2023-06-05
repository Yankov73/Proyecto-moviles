import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PruebaRecord extends FirestoreRecord {
  PruebaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "edad" field.
  int? _edad;
  int get edad => _edad ?? 0;
  bool hasEdad() => _edad != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _edad = snapshotData['edad'] as int?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prueba');

  static Stream<PruebaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PruebaRecord.fromSnapshot(s));

  static Future<PruebaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PruebaRecord.fromSnapshot(s));

  static PruebaRecord fromSnapshot(DocumentSnapshot snapshot) => PruebaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PruebaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PruebaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PruebaRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createPruebaRecordData({
  String? name,
  int? edad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'edad': edad,
    }.withoutNulls,
  );

  return firestoreData;
}
