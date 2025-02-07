import 'package:flutter/material.dart';
import 'SignUp.dart';
import 'Dasboard.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff28124c),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: Color(0xffffffff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Image(
              image: AssetImage("lib/assets/images/logoNa.png"),
              height: 120,
              width: 160,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Login to your Account",
                textAlign: TextAlign.center,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xff28124c),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
            child: TextField(
              controller: TextEditingController(),
              obscureText: false,
              textAlign: TextAlign.start,
              maxLines: 1,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xff000000),
              ),
              decoration: InputDecoration(
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(color: Color(0xf228124c), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(color: Color(0xf228124c), width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(color: Color(0xf228124c), width: 2),
                ),
                labelText: "Email",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xb3000000),
                ),
                hintText: "Enter Text",
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                  color: Color(0xff454545),
                ),
                filled: true,
                fillColor: Color(0xffffffff),
                isDense: false,
                contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                suffixIcon: Icon(Icons.account_circle_outlined,
                    color: Color(0xcc212435), size: 24),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
            child: TextField(
              controller: TextEditingController(),
              obscureText: true,
              textAlign: TextAlign.start,
              maxLines: 1,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xff000000),
              ),
              decoration: InputDecoration(
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(color: Color(0xf228124c), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(color: Color(0xf228124c), width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(color: Color(0xf228124c), width: 2),
                ),
                labelText: "Password",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xb3000000),
                ),
                hintText: "Enter Text",
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xff454545),
                ),
                filled: true,
                fillColor: Color(0xffffffff),
                isDense: false,
                contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                suffixIcon: Icon(Icons.visibility_off,
                    color: Color(0xcc212435), size: 24),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Dasboard();
                  }),
                );
              },
              color: Color(0xff28124c),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide(color: Color(0xff808080), width: 0),
              ),
              padding: EdgeInsets.all(16),
              child: Text(
                "Sign in",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              textColor: Color(0xffffffff),
              height: 40,
              minWidth: 140,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: Text(
              "Don't have an account?",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xff2a2a2a),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUp()),
                );
              },
              child: Text(
                "Sign Up",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 10,
                  color: Color(0xff604290),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
