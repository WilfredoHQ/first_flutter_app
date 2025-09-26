import 'package:first_flutter_app/features/user/models/user/user_model.dart';
import 'package:first_flutter_app/features/user/models/user_address/user_address_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

const emptyUser = User(
  id: '',
  name: '',
  lastName: '',
  email: '',
  address: UserAddress(street: '', city: '', country: ''),
  status: UserStatus.active,
);

@JsonEnum(valueField: 'value')
enum UserStatus {
  active(1),
  inactive(2);

  final int value;

  const UserStatus(this.value);
}

enum UserBuilderField { name, lastName, email, street, city, country }
