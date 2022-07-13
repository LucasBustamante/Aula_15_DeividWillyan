import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Icon(Icons.people, size: 100,)),
            TextField(
              decoration: InputDecoration(
                label: Text('Login')
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                label: Text('Password')
              ),
            ),
            ElevatedButton(onPressed: (){}, child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
