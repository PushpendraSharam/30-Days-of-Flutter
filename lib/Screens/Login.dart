import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_input/Constants/AssetsImage.dart';
import 'package:user_input/Utils/MyRoutes.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  bool isButtonPress = false;

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
                "Welcome $name",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 31),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 22),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter your Username",
                          labelText: "Username"),
                      onChanged: (value) {
                        name = value;
                        print("Chane is done ");
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password Number",
                          labelText: "Password"),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () async {
                  setState(() {
                    isButtonPress = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: isButtonPress ? 50 : 150,
                  height: 50,
                  alignment: Alignment.center,
                  child: isButtonPress
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(isButtonPress ? 50 : 8)),
                ),
              )
              // ElevatedButton(onPressed: (){
              //   Navigator.pushNamed(context, MyRoutes.homeRoute);
              // }, child: Text("Login")
              // , style: TextButton.styleFrom(minimumSize: Size(150, 40)),),
            ],
          ),
        ),
      ),
    );
  }
}
