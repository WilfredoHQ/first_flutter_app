// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: json['id'] as String,
  name: json['name'] as String,
  lastName: json['lastName'] as String,
  email: json['email'] as String,
  address: UserAddress.fromJson(json['address'] as Map<String, dynamic>),
  status: $enumDecode(_$UserStatusEnumMap, json['status']),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'lastName': instance.lastName,
  'email': instance.email,
  'address': instance.address.toJson(),
  'status': _$UserStatusEnumMap[instance.status]!,
};

const _$UserStatusEnumMap = {UserStatus.active: 1, UserStatus.inactive: 2};
