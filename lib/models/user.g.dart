// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'] as int?,
    name: json['name'] as String,
    phone: json['phone'] as String,
    password: json['password'] as String,
    role: json['role'],
    avatar: json['avatar'] as String,
    actived: json['actived'] as bool,
    location: Location.fromJson(json['location'] as Map<String, dynamic>),
    district: District.fromJson(json['district'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'password': instance.password,
      'phone': instance.phone,
      'avatar': instance.avatar,
      'role': instance.role,
      'district': instance.district,
      'location': instance.location,
      'name': instance.name,
      'actived': instance.actived,
    };
