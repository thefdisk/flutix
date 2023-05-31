// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      uid: json['uid'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      photoUrl: json['photoUrl'] as String,
      selectedGenres: (json['selectedGenres'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      selectedLanguage: json['selectedLanguage'] as String,
      balance: json['balance'] as int,
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'name': instance.name,
      'photoUrl': instance.photoUrl,
      'selectedGenres': instance.selectedGenres,
      'selectedLanguage': instance.selectedLanguage,
      'balance': instance.balance,
    };
