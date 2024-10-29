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

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
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
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlaylistCoversRecordDocumentEquality
    implements Equality<PlaylistCoversRecord> {
  const PlaylistCoversRecordDocumentEquality();

  @override
  bool equals(PlaylistCoversRecord? e1, PlaylistCoversRecord? e2) {
    return e1?.image == e2?.image;
  }

  @override
  int hash(PlaylistCoversRecord? e) => const ListEquality().hash([e?.image]);

  @override
  bool isValidKey(Object? o) => o is PlaylistCoversRecord;
}
