import 'package:flutter/material.dart';
// import 'package:flutter_application_first/route/route.dart';
import 'package:flutter_application_first/screen/User/user.dart';
import 'package:flutter_application_first/utils/theme.dart';
import 'package:flutter_application_first/widgets/UserListView/userListView.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // LogIn Button Press Function
  void onSubmitBtn() {
    // Add your login logic here
    bool isLoggedIn = true; // For demonstration, assume login is successful

    if (isLoggedIn) {
      // Navigate to the Profile screen if login is successful
      
      // 01 ********
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => const Profile()),
      // );

      // 02 ********
      Navigator.of(context).pushNamed('/profile');

      // 03 ********
      // Navigator.of(context).push(
      //   MaterialPageRoute(builder: (context) => const Profile()),
      // );
    }
  }

  @override
  Widget build(BuildContext context) {
    final users = User.getAllUsers();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
            },
          ),
          title: const Text(
            'Home',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: lightColorScheme.outlineVariant,
        ),

        // List Style set
        body: SafeArea(
          // Two Data between the divider so use this widget separate 
          child: ListView.separated(
            itemCount: users.length,
            separatorBuilder: (_, __) => const Divider(thickness: 3,),
            itemBuilder: (_, index) {
              final user = users[index];

              // List View data call
              return UserListView(
                user: user,
              );
            },
          )
        ),
      ),
    );
  }
}
