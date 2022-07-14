import 'package:flutter/material.dart';

import 'login_controller.dart';

class Login extends StatelessWidget {

  LoginController _controller = LoginController();

  Login({Key? key}) : super(key: key);

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
              onChanged: _controller.setLogin,
              decoration: InputDecoration(
                  label: Text('Login')
              ),
            ),
            TextField(
              onChanged: _controller.setPass,
              obscureText: true,
              decoration: InputDecoration(
                  label: Text('Password')
              ),
            ),
            ElevatedButton(onPressed: (){
_controller.auth().then((result){
  if(result){
    print('lucas');
  }else{
    print('error');
  }
});
            }, child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
