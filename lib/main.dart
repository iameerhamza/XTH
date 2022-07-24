import 'package:flutter/material.dart';
import 'package:xthproject_1/Components/FilledButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(35.0),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Icon(Icons.dark_mode_outlined)],
            ),
            Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                color: Colors.brown[900],
                shape: BoxShape.circle,
                border: Border.all(color: Colors.amber[700], width: 3),
              ),
              child: Center(
                child: Icon(
                  Icons.person_outline_outlined,
                  color: Colors.amber[700],
                  size: 65,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'John Doe',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 17,
            ),
            const Text(
              'john.doe@example.com',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 17,
            ),
            FilledButton(
              title: 'Upgrade to PRO',
              btnColor: Colors.amber[700],
              width: 300,
              height: 50,
              textColor: Colors.black,
              fontSize: 20,
            ),
            const SizedBox(
              height: 17,
            ),
            ListTileUI(
              Icons.privacy_tip_outlined,
              'Privacy',
            ),
            ListTileUI(
              Icons.history,
              'Purchase History',
            ),
            ListTileUI(
              Icons.help_outline,
              'Help & Support',
            ),
            ListTileUI(
              Icons.settings_outlined,
              'Settings',
            ),
            ListTileUI(
              Icons.person_add_outlined,
              'Invite a Friend',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FilledButton(
                title: 'Logout',
                btnColor: Colors.black87.withOpacity(0.8),
                width: size.width,
                height: 50,
                textColor: Colors.white,
                fontSize: 20,
              ),
            ),
          ]),
        ),
      ),
    ));
  }

  Widget ListTileUI(IconData leadingIcon, String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        tileColor: Colors.blueGrey[100].withOpacity(0.4),
        textColor: Colors.black,
        iconColor: Colors.black,
        leading: Icon(leadingIcon),
        title: Text(
          title,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        trailing: const Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}
