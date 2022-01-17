import 'package:flutter/material.dart';
import 'package:myouass/welcome_view.dart';


main() {
  runApp(MyAouss());
}

class MyAouss extends StatefulWidget {

  @override
  State<MyAouss> createState() => _MyAoussState();
}

class _MyAoussState extends State<MyAouss> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.red,
        ),
      ),

          debugShowCheckedModeBanner: false,
          routes: {

         '/': (_) => WelcomeView(),

          },

    );
  }
}
