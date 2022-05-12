import 'package:built_collection/built_collection.dart';
import 'package:mek_gasol/features/players/dvo/player_dvo.dart';
import 'package:mek_gasol/features/players/repos/players_repo.dart';
import 'package:mek_gasol/features/teams/dto/team_dto.dart';
import 'package:mek_gasol/features/teams/dvo/team_dvo.dart';
import 'package:mek_gasol/features/teams/repositories/teams_repo.dart';
import 'package:riverpod/riverpod.dart';
import 'package:rxdart/rxdart.dart';

class TeamsTrigger {
  static final instance = Provider((ref) {
    return TeamsTrigger(ref);
  });

  final Ref _ref;

  TeamsRepo get _teamsRepo => _ref.read(TeamsRepo.instance);
  PlayersRepo get _playersRepo => _ref.read(PlayersRepo.instance);

  TeamsTrigger(this._ref);

  Stream<BuiltList<TeamDvo>> watchAll() {
    return Rx.combineLatest2<BuiltList<TeamDto>, BuiltList<PlayerDvo>, BuiltList<TeamDvo>>(
        _teamsRepo.watchAll(), _playersRepo.watchAll(), (teams, players) {
      return teams.map((team) {
        return TeamDvo(
          id: team.id,
          name: team.name,
          players: players.where((e) => team.players.contains(e.id)).toBuiltList(),
        );
      }).toBuiltList();
    });
  }
}
