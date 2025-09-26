import 'package:first_flutter_app/features/shared/utilities.dart';
import 'package:first_flutter_app/features/user/models/user/user_model.dart';
import 'package:first_flutter_app/features/user/notifiers/user_builder/user_builder_notifier.dart';
import 'package:first_flutter_app/features/user/user_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:quickalert/quickalert.dart';

class UserBuilderDialog extends ConsumerStatefulWidget {
  final User? user;

  const UserBuilderDialog({super.key, this.user});

  @override
  ConsumerState<UserBuilderDialog> createState() => _UserBuilderDialogState();
}

class _UserBuilderDialogState extends ConsumerState<UserBuilderDialog> {
  final _formStateKey = GlobalKey<FormState>();
  final _focusNodes = FocusNodes<UserBuilderField>();

  UserBuilderNotifierProvider get _userBuilderNotifierProvider {
    return userBuilderNotifierProvider(widget.user ?? emptyUser);
  }

  void Function() _saveHandler(UserBuilderNotifier userBuilderNotifier) {
    return () {
      final formState = _formStateKey.currentState;
      if (formState == null) return;

      final invalidFields = formState.validateGranularly();

      if (invalidFields.isEmpty) {
        userBuilderNotifier.saveChanges();

        // WidgetsBinding.instance.addPostFrameCallback((_) {
        //   _resetHandler(userBuilderNotifier)();
        // });

        Navigator.pop(context);
      } else {
        final key = invalidFields.first.widget.key;

        if (key is ValueKey<UserBuilderField>) {
          _focusNodes.requestFocus(key.value);
        }
      }
    };
  }

  void Function() _resetHandler(UserBuilderNotifier userBuilderNotifier) {
    return () {
      final formState = _formStateKey.currentState;
      if (formState == null) return;

      userBuilderNotifier.discardChanges();

      formState.reset();
    };
  }

  @override
  Widget build(BuildContext context) {
    final userBuilderNotifier = ref.read(_userBuilderNotifierProvider.notifier);
    final userBuilderState = ref.watch(_userBuilderNotifierProvider);
    final originalUser = userBuilderState.original;

    final hasChanges = userBuilderState.hasChanges;

    return PopScope(
      canPop: !hasChanges,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          QuickAlert.show(
            context: context,
            type: QuickAlertType.confirm,
            confirmBtnText: 'Yes',
            cancelBtnText: 'No',
            confirmBtnColor: Colors.green,
            onConfirmBtnTap: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
          );
        }
      },
      child: AlertDialog(
        title: Text(
          userBuilderState.isCreating ? 'Create user' : 'Edit user',
          textAlign: TextAlign.center,
        ),
        content: SizedBox(
          width: 640,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Form(
                key: _formStateKey,
                autovalidateMode: AutovalidateMode.onUnfocus,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 16,
                  children: [
                    TextFormField(
                      key: ValueKey(UserBuilderField.name),
                      focusNode: _focusNodes.get(UserBuilderField.name),
                      initialValue: originalUser.name,
                      decoration: InputDecoration(labelText: 'Name *'),
                      onChanged: (value) {
                        userBuilderNotifier.updateName(value);
                      },
                      validator: RequiredValidator(
                        errorText: 'This field is required',
                      ).call,
                    ),
                    TextFormField(
                      key: ValueKey(UserBuilderField.lastName),
                      focusNode: _focusNodes.get(UserBuilderField.lastName),
                      initialValue: originalUser.lastName,
                      decoration: InputDecoration(labelText: 'Last name *'),
                      onChanged: (value) {
                        userBuilderNotifier.updateLastName(value);
                      },
                      validator: RequiredValidator(
                        errorText: 'This field is required',
                      ).call,
                    ),
                    TextFormField(
                      key: ValueKey(UserBuilderField.email),
                      focusNode: _focusNodes.get(UserBuilderField.email),
                      initialValue: originalUser.email,
                      decoration: InputDecoration(labelText: 'Email *'),
                      onChanged: (value) {
                        userBuilderNotifier.updateEmail(value);
                      },
                      validator: MultiValidator([
                        RequiredValidator(errorText: 'This field is required'),
                        EmailValidator(errorText: 'Invalid email address'),
                      ]).call,
                    ),
                    TextFormField(
                      key: ValueKey(UserBuilderField.street),
                      focusNode: _focusNodes.get(UserBuilderField.street),
                      initialValue: originalUser.address.street,
                      decoration: InputDecoration(labelText: 'Street *'),
                      onChanged: (value) {
                        userBuilderNotifier.updateStreet(value);
                      },
                      validator: RequiredValidator(
                        errorText: 'This field is required',
                      ).call,
                    ),
                    TextFormField(
                      key: ValueKey(UserBuilderField.city),
                      focusNode: _focusNodes.get(UserBuilderField.city),
                      initialValue: originalUser.address.city,
                      decoration: InputDecoration(labelText: 'City *'),
                      onChanged: (value) {
                        userBuilderNotifier.updateCity(value);
                      },
                      validator: RequiredValidator(
                        errorText: 'This field is required',
                      ).call,
                    ),
                    TextFormField(
                      key: ValueKey(UserBuilderField.country),
                      focusNode: _focusNodes.get(UserBuilderField.country),
                      initialValue: originalUser.address.country,
                      decoration: InputDecoration(labelText: 'Country *'),
                      onChanged: (value) {
                        userBuilderNotifier.updateCountry(value);
                      },
                      validator: RequiredValidator(
                        errorText: 'This field is required',
                      ).call,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Cancelar'),
          ),
          if (!userBuilderState.isCreating)
            TextButton(
              onPressed: hasChanges ? _resetHandler(userBuilderNotifier) : null,
              child: Text('Restablecer'),
            ),
          TextButton(
            onPressed: hasChanges ? _saveHandler(userBuilderNotifier) : null,
            child: Text(userBuilderState.isCreating ? 'Crear' : 'Guardar'),
          ),
        ],
      ),
    );
  }
}
