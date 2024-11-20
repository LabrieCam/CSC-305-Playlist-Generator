import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlaylistCoversRecord extends FirestoreRecord {
  PlaylistCoversRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "playlist_url" field.
  String? _playlistUrl;
  String get playlistUrl => _playlistUrl ?? '';
  bool hasPlaylistUrl() => _playlistUrl != null;

  // "playlist_name" field.
  String? _playlistName;
  String get playlistName => _playlistName ?? '';
  bool hasPlaylistName() => _playlistName != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "createdTime" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
    _playlistUrl = snapshotData['playlist_url'] as String?;
    _playlistName = snapshotData['playlist_name'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _createdTime = snapshotData['createdTime'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('playlist_covers');

  static Stream<PlaylistCoversRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlaylistCoversRecord.fromSnapshot(s));

  static Future<PlaylistCoversRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlaylistCoversRecord.fromSnapshot(s));

  static PlaylistCoversRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PlaylistCoversRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlaylistCoversRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlaylistCoversRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlaylistCoversRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlaylistCoversRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlaylistCoversRecordData({
  String? image,
  String? playlistUrl,
  String? playlistName,
  DocumentReference? user,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'playlist_url': playlistUrl,
      'playlist_name': playlistName,
      'user': user,
      'createdTime': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlaylistCoversRecordDocumentEquality
    implements Equality<PlaylistCoversRecord> {
  const PlaylistCoversRecordDocumentEquality();

  @override
  bool equals(PlaylistCoversRecord? e1, PlaylistCoversRecord? e2) {
    return e1?.image == e2?.image &&
        e1?.playlistUrl == e2?.playlistUrl &&
        e1?.playlistName == e2?.playlistName &&
        e1?.user == e2?.user &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(PlaylistCoversRecord? e) => const ListEquality().hash(
      [e?.image, e?.playlistUrl, e?.playlistName, e?.user, e?.createdTime]);

  @override
  bool isValidKey(Object? o) => o is PlaylistCoversRecord;
}
