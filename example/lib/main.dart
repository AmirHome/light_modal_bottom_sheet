import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:light_modal_bottom_sheet/light_modal_bottom_sheet.dart';

import 'modals/floating_modal.dart';
import 'modals/modal_fit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      home: MyTestPage(title: 'Flutter Demo Light Modals'),
    );
  }
}

class MyTestPage extends StatefulWidget {
  MyTestPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyTestPageState createState() => _MyTestPageState();
}

class _MyTestPageState extends State<MyTestPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: CupertinoPageScaffold(
          navigationBar: const CupertinoNavigationBar(
            transitionBetweenRoutes: false,
            middle: Text('Light Modal Presentation'),
            // trailing: GestureDetector(
            //   child: Icon(Icons.arrow_forward),
            //   onTap: () => Navigator.of(context).pushNamed('ss'),
            // ),
          ),
          child: SizedBox.expand(
            child: SingleChildScrollView(
              primary: true,
              child: SafeArea(
                bottom: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      title: const Text('Material fit'),
                      ///material_bottom_sheet.dart
                      onTap: () => showMaterialModalBottomSheet(
                        expand: false,
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (context) => ModalFit(),
                      ),
                    ),
                    ListTile(
                      title: const Text('Bar Modal'),
                      ///bar_bottom_sheet.dart
                      onTap: () => showBarModalBottomSheet(
                        expand: false,
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (context) => ModalFit(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
