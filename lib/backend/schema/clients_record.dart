import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ClientsRecord extends FirestoreRecord {
  ClientsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  void _initializeFields() {
    _displayName = snapshotData['display_name'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clients');

  static Stream<ClientsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClientsRecord.fromSnapshot(s));

  static Future<ClientsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClientsRecord.fromSnapshot(s));

  static ClientsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClientsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClientsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClientsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClientsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClientsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClientsRecordData({
  String? displayName,
  String? uid,
  DateTime? createdTime,
  DateTime? editedTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'display_name': displayName,
      'uid': uid,
      'created_time': createdTime,
      'edited_time': editedTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClientsRecordDocumentEquality implements Equality<ClientsRecord> {
  const ClientsRecordDocumentEquality();

  @override
  bool equals(ClientsRecord? e1, ClientsRecord? e2) {
    return e1?.displayName == e2?.displayName &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.editedTime == e2?.editedTime;
  }

  @override
  int hash(ClientsRecord? e) => const ListEquality()
      .hash([e?.displayName, e?.uid, e?.createdTime, e?.editedTime]);

  @override
  bool isValidKey(Object? o) => o is ClientsRecord;
}
