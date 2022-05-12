import 'package:built_collection/built_collection.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mek_data_class/mek_data_class.dart';

part 'team_dto.g.dart';

@DataClass()
@JsonSerializable()
class TeamDto with _$TeamDto {
  final String id;
  final String name;
  final BuiltList<String> players;

  const TeamDto({
    required this.id,
    required this.name,
    required this.players,
  });

  factory TeamDto.fromJson(Map<String, dynamic> map) => _$TeamDtoFromJson(map);
  Map<String, dynamic> toJson() => _$TeamDtoToJson(this);
}
