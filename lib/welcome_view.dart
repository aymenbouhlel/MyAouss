import 'package:flutter/material.dart';

import 'create_account_view.dart';
import 'forgot_password.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({Key? key}) : super(key: key);
  static const String routeName = '/welcome';

  @override
  _WelcomeViewState createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 100,

                    child: IconButton(
                      onPressed: () => {},
                      icon: const Icon(Icons.cloud, size: 100, color: Colors.grey),
                    ),
                ),
              ),
            ),

            Container(
              alignment: Alignment.topCenter,
              child: const Text(
                'MyAouss Company',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey),
              ),
            ),


            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20, bottom: 20, top: 50),
              child: const Text(
                'Sign In',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter your email'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(

                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter your password'),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(right: 20),
              child: TextButton(

                onPressed: (){
                  Navigator.pushNamed(context, ForgotPassword.routeName);
                },
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                onPressed: () {

                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(right: 20, top: 40),
              child: TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, CreateAccountView.routeName);
                },
                child: const Text(
                  'New User? Create Account',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
