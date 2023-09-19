import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_input/Constants/AssetsImage.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: kToolbarHeight + 12,
            ),
            Text(
              "Welcome",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12,
            ),
            Text("Buy any item using the app",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400)),
            Image.asset(
              AssetsImage.loginImage,
              alignment: Alignment.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoButton(
                  onPressed: (){},
                  padding: EdgeInsets.all(8),
                  child: Image.asset(
                    "assets/facebook.png",
                    scale: 11,
                  ),
                ),

                CupertinoButton(
                  onPressed: (){},
                  padding: EdgeInsets.all(8),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(

                      "assets/search.png",
                      scale: 11,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
