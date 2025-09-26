import 'package:faker/faker.dart';
import 'package:first_flutter_app/features/user/models/user/user_model.dart';
import 'package:first_flutter_app/features/user/notifiers/users/users_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_builder_notifier.freezed.dart';
part 'user_builder_notifier.g.dart';

@Freezed()
abstract class UserBuilderState with _$UserBuilderState {
  const UserBuilderState._();

  const factory UserBuilderState({
    required User original,
    required User editable,
  }) = _UserBuilderState;

  bool get hasChanges {
    return original != editable;
  }

  bool get isCreating {
    return original.id.isEmpty;
  }
}

@Riverpod()
class UserBuilderNotifier extends _$UserBuilderNotifier {
  @override
  UserBuilderState build(User initialUser) {
    return UserBuilderState(original: initialUser, editable: initialUser);
  }

  void updateName(String name) {
    _updateUser((user) {
      return user.copyWith(name: name);
    });
  }

  void updateLastName(String lastName) {
    _updateUser((user) {
      return user.copyWith(lastName: lastName);
    });
  }

  void updateEmail(String email) {
    _updateUser((user) {
      return user.copyWith(email: email);
    });
  }

  void updateStreet(String street) {
    _updateUser((user) {
      return user.copyWith.address(street: street);
    });
  }

  void updateCity(String city) {
    _updateUser((user) {
      return user.copyWith.address(city: city);
    });
  }

  void updateCountry(String country) {
    _updateUser((user) {
      return user.copyWith.address(country: country);
    });
  }

  void saveChanges() {
    if (state.isCreating) {
      final faker = Faker();

      final id = faker.guid.guid();
      final createdUser = state.editable.copyWith(id: id);

      state = state.copyWith(original: createdUser, editable: createdUser);

      final usersNotifier = ref.read(usersNotifierProvider.notifier);

      usersNotifier.addUser(createdUser);
    } else {
      final updatedUser = state.editable;

      state = state.copyWith(original: updatedUser);

      final usersNotifier = ref.read(usersNotifierProvider.notifier);

      usersNotifier.replaceUser(updatedUser);
    }
  }

  void discardChanges() {
    state = state.copyWith(editable: state.original);
  }

  void _updateUser(User Function(User user) updateCallback) {
    final updatedUser = updateCallback(state.editable);

    state = state.copyWith(editable: updatedUser);
  }
}
