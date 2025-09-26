import 'package:faker/faker.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:first_flutter_app/features/user/models/user/user_model.dart';
import 'package:first_flutter_app/features/user/models/user_address/user_address_model.dart';
import 'package:first_flutter_app/features/user/user_constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'users_notifier.freezed.dart';
part 'users_notifier.g.dart';

@Freezed()
abstract class UsersState with _$UsersState {
  const factory UsersState({required IList<User> users}) = _UsersState;
}

@Riverpod()
class UsersNotifier extends _$UsersNotifier {
  @override
  UsersState build() {
    final faker = Faker();

    return UsersState(
      users: [
        User(
          id: faker.guid.guid(),
          name: faker.person.name(),
          lastName: faker.person.lastName(),
          email: faker.internet.email(),
          address: UserAddress(
            street: faker.address.streetName(),
            city: faker.address.city(),
            country: faker.address.country(),
          ),
          status: UserStatus.active,
        ),
      ].lock,
    );
  }

  void addUser(User user) {
    state = state.copyWith(users: state.users.add(user));
  }

  void replaceUser(User user) {
    state = state.copyWith(
      users: state.users.updateById([user], (user) => user.id),
    );
  }

  void deleteUser(User user) {
    state = state.copyWith(users: state.users.remove(user));
  }
}
