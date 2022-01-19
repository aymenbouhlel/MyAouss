import 'package:flutter/material.dart';


class CreateAccountView extends StatefulWidget {
  const CreateAccountView({Key? key}) : super(key: key);
  static const String routeName = '/createAccount';

  @override
  _CreateAccountViewState createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
      ),
    );
  }
}
