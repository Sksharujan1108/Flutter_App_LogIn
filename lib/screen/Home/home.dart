import 'package:flutter/material.dart';
import 'package:flutter_application_first/screen/Profile/profile.dart';
// import 'package:flutter_application_first/route/route.dart';
import 'package:flutter_application_first/screen/User/user.dart';
import 'package:flutter_application_first/utils/theme.dart';


class Home extends StatefulWidget {
   final User user;

  const Home({
    super.key,
    required this.user
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // This is Nullable String 'Is it value or Isn't Value'
  String? dataFromProfile;

  // Press Function
  void navigateToProfile(User user) async {
    final String? result = await Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => Profile(user: user)),
    );

    if (result != null) {
      setState(() {
        dataFromProfile = result;
      });
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
        body: Column(
          children: [
            Expanded(
              flex: 3,
              // List View
              child: ListView.separated(
                itemCount: users.length,
                separatorBuilder: (_, __) => const Divider(thickness: 3,),
                itemBuilder: (_, index) {
                  final user = users[index];

                   // List View data call
                  return ListTile(
                    leading: const Icon(Icons.person_outline),

                    title: Text('Name : ${user.name}'),
                    // subtitle: Text('Emil : ${user.email}'),
                    subtitle: Text('Designation : ${user.designation}'),

                    trailing: const Icon(Icons.keyboard_arrow_right_outlined),

                    onTap: () async {
                      // Get the future Value*** from Profile
                      final String? result = await Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => Profile(user: user)),
                      );

                      if (result!= null) {
                        setState(() {
                          dataFromProfile = result;
                        });
                      }

                    },
                  );
                }
              )
            ),

            Expanded(
              child: Container(
                color: Colors.green[300],
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 15,),

                    const Text('Data Form Second Page'),

                    const SizedBox(height: 15,),

                    if (dataFromProfile != null) 
                      Text(
                        'Hello!!👉 👉 : $dataFromProfile 🤞🤞!',
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                  ],
                ),
              )
            )
          ]
          // Two Data between the divider so use this widget separate 
          
        ),
      ),
    );
  }
}
