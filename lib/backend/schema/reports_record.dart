import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ReportsRecord extends FirestoreRecord {
  ReportsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "client_name" field.
  String? _clientName;
  String get clientName => _clientName ?? '';
  bool hasClientName() => _clientName != null;

  // "client_id" field.
  String? _clientId;
  String get clientId => _clientId ?? '';
  bool hasClientId() => _clientId != null;

  // "duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "report_start_time" field.
  DateTime? _reportStartTime;
  DateTime? get reportStartTime => _reportStartTime;
  bool hasReportStartTime() => _reportStartTime != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "report_id" field.
  String? _reportId;
  String get reportId => _reportId ?? '';
  bool hasReportId() => _reportId != null;

  // "us_id" field.
  String? _usId;
  String get usId => _usId ?? '';
  bool hasUsId() => _usId != null;

  // "issue" field.
  String? _issue;
  String get issue => _issue ?? '';
  bool hasIssue() => _issue != null;

  void _initializeFields() {
    _clientName = snapshotData['client_name'] as String?;
    _clientId = snapshotData['client_id'] as String?;
    _duration = snapshotData['duration'] as String?;
    _description = snapshotData['description'] as String?;
    _reportStartTime = snapshotData['report_start_time'] as DateTime?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _reportId = snapshotData['report_id'] as String?;
    _usId = snapshotData['us_id'] as String?;
    _issue = snapshotData['issue'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reports');

  static Stream<ReportsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReportsRecord.fromSnapshot(s));

  static Future<ReportsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReportsRecord.fromSnapshot(s));

  static ReportsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReportsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReportsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReportsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReportsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReportsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReportsRecordData({
  String? clientName,
  String? clientId,
  String? duration,
  String? description,
  DateTime? reportStartTime,
  DateTime? createdTime,
  String? reportId,
  String? usId,
  String? issue,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'client_name': clientName,
      'client_id': clientId,
      'duration': duration,
      'description': description,
      'report_start_time': reportStartTime,
      'created_time': createdTime,
      'report_id': reportId,
      'us_id': usId,
      'issue': issue,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReportsRecordDocumentEquality implements Equality<ReportsRecord> {
  const ReportsRecordDocumentEquality();

  @override
  bool equals(ReportsRecord? e1, ReportsRecord? e2) {
    return e1?.clientName == e2?.clientName &&
        e1?.clientId == e2?.clientId &&
        e1?.duration == e2?.duration &&
        e1?.description == e2?.description &&
        e1?.reportStartTime == e2?.reportStartTime &&
        e1?.createdTime == e2?.createdTime &&
        e1?.reportId == e2?.reportId &&
        e1?.usId == e2?.usId &&
        e1?.issue == e2?.issue;
  }

  @override
  int hash(ReportsRecord? e) => const ListEquality().hash([
        e?.clientName,
        e?.clientId,
        e?.duration,
        e?.description,
        e?.reportStartTime,
        e?.createdTime,
        e?.reportId,
        e?.usId,
        e?.issue
      ]);

  @override
  bool isValidKey(Object? o) => o is ReportsRecord;
}
