// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// DataClassGenerator
// **************************************************************************

// ignore_for_file: annotate_overrides

mixin _$UserDto {
  UserDto get _self => this as UserDto;

  Iterable<Object?> get _props sync* {
    yield _self.id;
    yield _self.email;
  }

  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _$UserDto &&
          runtimeType == other.runtimeType &&
          DataClass.$equals(_props, other._props);

  int get hashCode => Object.hashAll(_props);

  String toString() => (ClassToString('UserDto')
        ..add('id', _self.id)
        ..add('email', _self.email))
      .toString();
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDto _$UserDtoFromJson(Map json) => UserDto(
      id: json['id'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$UserDtoToJson(UserDto instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
    };
