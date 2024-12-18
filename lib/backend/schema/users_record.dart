import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

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

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "explicit_allowed" field.
  bool? _explicitAllowed;
  bool get explicitAllowed => _explicitAllowed ?? false;
  bool hasExplicitAllowed() => _explicitAllowed != null;

  // "nps_rating" field.
  double? _npsRating;
  double get npsRating => _npsRating ?? 0.0;
  bool hasNpsRating() => _npsRating != null;

  // "fav_genre" field.
  String? _favGenre;
  String get favGenre => _favGenre ?? '';
  bool hasFavGenre() => _favGenre != null;

  // "birthday" field.
  String? _birthday;
  String get birthday => _birthday ?? '';
  bool hasBirthday() => _birthday != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "daily_created" field.
  bool? _dailyCreated;
  bool get dailyCreated => _dailyCreated ?? false;
  bool hasDailyCreated() => _dailyCreated != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _explicitAllowed = snapshotData['explicit_allowed'] as bool?;
    _npsRating = castToType<double>(snapshotData['nps_rating']);
    _favGenre = snapshotData['fav_genre'] as String?;
    _birthday = snapshotData['birthday'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _dailyCreated = snapshotData['daily_created'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  bool? explicitAllowed,
  double? npsRating,
  String? favGenre,
  String? birthday,
  String? photoUrl,
  bool? dailyCreated,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'explicit_allowed': explicitAllowed,
      'nps_rating': npsRating,
      'fav_genre': favGenre,
      'birthday': birthday,
      'photo_url': photoUrl,
      'daily_created': dailyCreated,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.explicitAllowed == e2?.explicitAllowed &&
        e1?.npsRating == e2?.npsRating &&
        e1?.favGenre == e2?.favGenre &&
        e1?.birthday == e2?.birthday &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.dailyCreated == e2?.dailyCreated;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.explicitAllowed,
        e?.npsRating,
        e?.favGenre,
        e?.birthday,
        e?.photoUrl,
        e?.dailyCreated
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
