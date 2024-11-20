import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ApiToolsRecord extends FirestoreRecord {
  ApiToolsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "spotify_refresh" field.
  String? _spotifyRefresh;
  String get spotifyRefresh => _spotifyRefresh ?? '';
  bool hasSpotifyRefresh() => _spotifyRefresh != null;

  // "spotify_auth" field.
  String? _spotifyAuth;
  String get spotifyAuth => _spotifyAuth ?? '';
  bool hasSpotifyAuth() => _spotifyAuth != null;

  // "auth_time" field.
  DateTime? _authTime;
  DateTime? get authTime => _authTime;
  bool hasAuthTime() => _authTime != null;

  // "AI_Key" field.
  String? _aIKey;
  String get aIKey => _aIKey ?? '';
  bool hasAIKey() => _aIKey != null;

  void _initializeFields() {
    _spotifyRefresh = snapshotData['spotify_refresh'] as String?;
    _spotifyAuth = snapshotData['spotify_auth'] as String?;
    _authTime = snapshotData['auth_time'] as DateTime?;
    _aIKey = snapshotData['AI_Key'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('api_tools');

  static Stream<ApiToolsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ApiToolsRecord.fromSnapshot(s));

  static Future<ApiToolsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ApiToolsRecord.fromSnapshot(s));

  static ApiToolsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ApiToolsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ApiToolsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ApiToolsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ApiToolsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ApiToolsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createApiToolsRecordData({
  String? spotifyRefresh,
  String? spotifyAuth,
  DateTime? authTime,
  String? aIKey,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'spotify_refresh': spotifyRefresh,
      'spotify_auth': spotifyAuth,
      'auth_time': authTime,
      'AI_Key': aIKey,
    }.withoutNulls,
  );

  return firestoreData;
}

class ApiToolsRecordDocumentEquality implements Equality<ApiToolsRecord> {
  const ApiToolsRecordDocumentEquality();

  @override
  bool equals(ApiToolsRecord? e1, ApiToolsRecord? e2) {
    return e1?.spotifyRefresh == e2?.spotifyRefresh &&
        e1?.spotifyAuth == e2?.spotifyAuth &&
        e1?.authTime == e2?.authTime &&
        e1?.aIKey == e2?.aIKey;
  }

  @override
  int hash(ApiToolsRecord? e) => const ListEquality()
      .hash([e?.spotifyRefresh, e?.spotifyAuth, e?.authTime, e?.aIKey]);

  @override
  bool isValidKey(Object? o) => o is ApiToolsRecord;
}
