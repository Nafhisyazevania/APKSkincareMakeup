import 'package:flutter/material.dart';
import 'Login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f4f4),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(
              image: AssetImage("lib/assets/images/logoNA.png"),
              height: 200,
              width: 280,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              "Show your skin type!!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Color(0xff190019),
              ),
            ),
            SizedBox(height: 20),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Login();
                  }),
                );
              },
              color: Color(0xff2a134e),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: EdgeInsets.all(16),
              child: Text(
                "Continue",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              textColor: Color(0xffffffff),
              height: 40,
              minWidth: 140,
            ),
          ],
        ),
      ),
    );
  }
}
