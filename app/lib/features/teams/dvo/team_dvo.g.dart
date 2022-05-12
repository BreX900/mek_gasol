// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_dvo.dart';

// **************************************************************************
// DataClassGenerator
// **************************************************************************

// ignore_for_file: annotate_overrides

mixin _$TeamDvo {
  TeamDvo get _self => this as TeamDvo;

  Iterable<Object?> get _props sync* {
    yield _self.id;
    yield _self.name;
    yield _self.players;
  }

  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _$TeamDvo &&
          runtimeType == other.runtimeType &&
          DataClass.$equals(_props, other._props);

  int get hashCode => Object.hashAll(_props);

  String toString() => (ClassToString('TeamDvo')
        ..add('id', _self.id)
        ..add('name', _self.name)
        ..add('players', _self.players))
      .toString();
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamDvo _$TeamDvoFromJson(Map json) => TeamDvo(
      id: json['id'] as String,
      name: json['name'] as String,
      players: ((json['players'] as List).map(
              (e) => PlayerDvo.fromJson(Map<String, dynamic>.from(e as Map))))
          .toBuiltList(),
    );

Map<String, dynamic> _$TeamDvoToJson(TeamDvo instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'players': instance.players.toList(),
    };
