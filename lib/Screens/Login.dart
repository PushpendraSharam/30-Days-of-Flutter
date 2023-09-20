import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_input/Constants/AssetsImage.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset(
              "assets/login_image.png",
              fit: BoxFit.contain,

            ),
            Text(
              "Welcome",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 22),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter your Username",
                        labelText: "Username"
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password Number",
                        labelText: "Password"
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){
              print("Login Button Pressed");
            }, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
