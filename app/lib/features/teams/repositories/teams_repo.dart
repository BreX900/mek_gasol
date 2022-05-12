import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mek_gasol/features/teams/dto/team_dto.dart';
import 'package:mek_gasol/shared/providers.dart';
import 'package:riverpod/riverpod.dart';

class TeamsRepo {
  static final instance = Provider((ref) {
    return TeamsRepo(ref);
  });

  final Ref _ref;

  FirebaseFirestore get _firestore => _ref.read(Providers.firestore);

  TeamsRepo(this._ref);

  CollectionReference<TeamDto> get _collection {
    return _firestore.collection('teams').withJsonConverter(TeamDto.fromJson);
  }

  Stream<BuiltList<TeamDto>> watchAll() {
    return _collection.snapshots().map((snapshot) {
      return snapshot.docs.map((e) => e.data()).toBuiltList();
    });
  }
}
