import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_address_model.freezed.dart';
part 'user_address_model.g.dart';

@Freezed()
abstract class UserAddress with _$UserAddress {
  const UserAddress._();

  const factory UserAddress({
    required String street,
    required String city,
    required String country,
  }) = _UserAddress;

  factory UserAddress.fromJson(Map<String, dynamic> json) =>
      _$UserAddressFromJson(json);

  String get fullAddress {
    return '$street, $city, $country';
  }
}
