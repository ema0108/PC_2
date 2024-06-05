import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CalificationsRecord extends FirestoreRecord {
  CalificationsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "us_id" field.
  String? _usId;
  String get usId => _usId ?? '';
  bool hasUsId() => _usId != null;

  // "report_id" field.
  String? _reportId;
  String get reportId => _reportId ?? '';
  bool hasReportId() => _reportId != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  void _initializeFields() {
    _usId = snapshotData['us_id'] as String?;
    _reportId = snapshotData['report_id'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('califications');

  static Stream<CalificationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CalificationsRecord.fromSnapshot(s));

  static Future<CalificationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CalificationsRecord.fromSnapshot(s));

  static CalificationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CalificationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CalificationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CalificationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CalificationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CalificationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCalificationsRecordData({
  String? usId,
  String? reportId,
  double? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'us_id': usId,
      'report_id': reportId,
      'rating': rating,
    }.withoutNulls,
  );

  return firestoreData;
}

class CalificationsRecordDocumentEquality
    implements Equality<CalificationsRecord> {
  const CalificationsRecordDocumentEquality();

  @override
  bool equals(CalificationsRecord? e1, CalificationsRecord? e2) {
    return e1?.usId == e2?.usId &&
        e1?.reportId == e2?.reportId &&
        e1?.rating == e2?.rating;
  }

  @override
  int hash(CalificationsRecord? e) =>
      const ListEquality().hash([e?.usId, e?.reportId, e?.rating]);

  @override
  bool isValidKey(Object? o) => o is CalificationsRecord;
}
