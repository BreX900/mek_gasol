import 'package:built_collection/built_collection.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mek_data_class/mek_data_class.dart';
import 'package:mek_gasol/features/players/dvo/player_dvo.dart';

part 'team_dvo.g.dart';

@DataClass()
@JsonSerializable()
class TeamDvo with _$TeamDvo {
  final String id;
  final String name;
  final BuiltList<PlayerDvo> players;

  const TeamDvo({
    required this.id,
    required this.name,
    required this.players,
  });

  factory TeamDvo.fromJson(Map<String, dynamic> map) => _$TeamDvoFromJson(map);
  Map<String, dynamic> toJson() => _$TeamDvoToJson(this);
}
