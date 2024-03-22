import 'package:flutter/material.dart';
import 'package:flutter_application_first/screen/User/user.dart';

class UserListView extends StatelessWidget {
    final User user;

  const UserListView({
    super.key,
    required this.user
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.person_outline),
      title: Text('Name : ${user.name}'),
      // subtitle: Text('Emil : ${user.email}'),
      subtitle: Text('Designation : ${user.designation}'),
      trailing: const Icon(Icons.chevron_right),
    );
  }
}