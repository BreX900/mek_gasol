// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_dto.dart';

// **************************************************************************
// DataClassGenerator
// **************************************************************************

// ignore_for_file: annotate_overrides

mixin _$TeamDto {
  TeamDto get _self => this as TeamDto;

  Iterable<Object?> get _props sync* {
    yield _self.id;
    yield _self.name;
    yield _self.players;
  }

  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _$TeamDto &&
          runtimeType == other.runtimeType &&
          DataClass.$equals(_props, other._props);

  int get hashCode => Object.hashAll(_props);

  String toString() => (ClassToString('TeamDto')
        ..add('id', _self.id)
        ..add('name', _self.name)
        ..add('players', _self.players))
      .toString();
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamDto _$TeamDtoFromJson(Map json) => TeamDto(
      id: json['id'] as String,
      name: json['name'] as String,
      players:
          ((json['players'] as List).map((e) => e as String)).toBuiltList(),
    );

Map<String, dynamic> _$TeamDtoToJson(TeamDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'players': instance.players.toList(),
    };
