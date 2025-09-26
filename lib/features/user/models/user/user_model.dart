// ignore_for_file: invalid_annotation_target

import 'package:first_flutter_app/features/user/models/user_address/user_address_model.dart';
import 'package:first_flutter_app/features/user/user_constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@Freezed()
abstract class User with _$User {
  const User._();

  @JsonSerializable(explicitToJson: true)
  const factory User({
    required String id,
    required String name,
    required String lastName,
    required String email,
    required UserAddress address,
    required UserStatus status,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  String get fullName => '$name $lastName';
}
