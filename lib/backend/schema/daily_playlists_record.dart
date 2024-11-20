import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DailyPlaylistsRecord extends FirestoreRecord {
  DailyPlaylistsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "daily_url" field.
  String? _dailyUrl;
  String get dailyUrl => _dailyUrl ?? '';
  bool hasDailyUrl() => _dailyUrl != null;

  // "daily_name" field.
  String? _dailyName;
  String get dailyName => _dailyName ?? '';
  bool hasDailyName() => _dailyName != null;

  // "daily_image" field.
  String? _dailyImage;
  String get dailyImage => _dailyImage ?? '';
  bool hasDailyImage() => _dailyImage != null;

  // "daily_time" field.
  DateTime? _dailyTime;
  DateTime? get dailyTime => _dailyTime;
  bool hasDailyTime() => _dailyTime != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "genre" field.
  String? _genre;
  String get genre => _genre ?? '';
  bool hasGenre() => _genre != null;

  void _initializeFields() {
    _dailyUrl = snapshotData['daily_url'] as String?;
    _dailyName = snapshotData['daily_name'] as String?;
    _dailyImage = snapshotData['daily_image'] as String?;
    _dailyTime = snapshotData['daily_time'] as DateTime?;
    _user = snapshotData['user'] as DocumentReference?;
    _genre = snapshotData['genre'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('daily_playlists');

  static Stream<DailyPlaylistsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DailyPlaylistsRecord.fromSnapshot(s));

  static Future<DailyPlaylistsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DailyPlaylistsRecord.fromSnapshot(s));

  static DailyPlaylistsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DailyPlaylistsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DailyPlaylistsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DailyPlaylistsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DailyPlaylistsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DailyPlaylistsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDailyPlaylistsRecordData({
  String? dailyUrl,
  String? dailyName,
  String? dailyImage,
  DateTime? dailyTime,
  DocumentReference? user,
  String? genre,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'daily_url': dailyUrl,
      'daily_name': dailyName,
      'daily_image': dailyImage,
      'daily_time': dailyTime,
      'user': user,
      'genre': genre,
    }.withoutNulls,
  );

  return firestoreData;
}

class DailyPlaylistsRecordDocumentEquality
    implements Equality<DailyPlaylistsRecord> {
  const DailyPlaylistsRecordDocumentEquality();

  @override
  bool equals(DailyPlaylistsRecord? e1, DailyPlaylistsRecord? e2) {
    return e1?.dailyUrl == e2?.dailyUrl &&
        e1?.dailyName == e2?.dailyName &&
        e1?.dailyImage == e2?.dailyImage &&
        e1?.dailyTime == e2?.dailyTime &&
        e1?.user == e2?.user &&
        e1?.genre == e2?.genre;
  }

  @override
  int hash(DailyPlaylistsRecord? e) => const ListEquality().hash([
        e?.dailyUrl,
        e?.dailyName,
        e?.dailyImage,
        e?.dailyTime,
        e?.user,
        e?.genre
      ]);

  @override
  bool isValidKey(Object? o) => o is DailyPlaylistsRecord;
}
