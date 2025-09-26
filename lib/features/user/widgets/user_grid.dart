import 'package:first_flutter_app/features/user/models/user/user_model.dart';
import 'package:first_flutter_app/features/user/notifiers/users/users_notifier.dart';
import 'package:first_flutter_app/features/user/widgets/user_builder_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserGrid extends ConsumerWidget {
  const UserGrid({super.key});

  void _createUser(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) {
        return UserBuilderDialog();
      },
    );
  }

  void _updateUser(BuildContext context, WidgetRef ref, User user) {
    showDialog(
      context: context,
      builder: (context) {
        return UserBuilderDialog(user: user);
      },
    );
  }

  void _deleteUser(BuildContext context, WidgetRef ref, User user) {
    final usersNotifier = ref.read(usersNotifierProvider.notifier);

    usersNotifier.deleteUser(user);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersState = ref.watch(usersNotifierProvider);
    final users = usersState.users;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: LayoutBuilder(
        builder: (context, constraints) {
          const minWidth = 250;
          final maxAvailableWidth = constraints.maxWidth;

          int columns = 1;

          if (maxAvailableWidth > minWidth) {
            columns = maxAvailableWidth ~/ minWidth;
          }

          return GridView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: columns,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            itemCount: users.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    child: Card(
                      child: Center(child: Icon(Icons.add, size: 64)),
                    ),
                    onTap: () {
                      _createUser(context, ref);
                    },
                  ),
                );
              }

              final user = users[index - 1];

              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Expanded(
                        child: Column(
                          spacing: 8,
                          children: [
                            Text(
                              user.fullName,
                              style: TextStyle(fontWeight: FontWeight.w700),
                              textAlign: TextAlign.center,
                            ),
                            Text(user.email, textAlign: TextAlign.center),
                            Text(
                              user.address.fullAddress,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        spacing: 8,
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              child: Text('Delete'),
                              onPressed: () {
                                _deleteUser(context, ref, user);
                              },
                            ),
                          ),
                          Expanded(
                            child: FilledButton(
                              child: Text('Edit'),
                              onPressed: () {
                                _updateUser(context, ref, user);
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
