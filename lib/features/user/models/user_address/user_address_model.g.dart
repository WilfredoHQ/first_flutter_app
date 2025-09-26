// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserAddress _$UserAddressFromJson(Map<String, dynamic> json) => _UserAddress(
  street: json['street'] as String,
  city: json['city'] as String,
  country: json['country'] as String,
);

Map<String, dynamic> _$UserAddressToJson(_UserAddress instance) =>
    <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
      'country': instance.country,
    };
