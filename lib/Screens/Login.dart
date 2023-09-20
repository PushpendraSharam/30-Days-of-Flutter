import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_input/Constants/AssetsImage.dart';
import 'package:user_input/Utils/MyRoutes.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Image.asset(
                "assets/login_image.png",
                fit: BoxFit.cover,

              ),
              Text(
                "Welcome",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 31),
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
                height: 40,
              ),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              }, child: Text("Login")
              , style: TextButton.styleFrom(minimumSize: Size(150, 40)),),

            ],
          ),
        ),
      ),
    );
  }
}
