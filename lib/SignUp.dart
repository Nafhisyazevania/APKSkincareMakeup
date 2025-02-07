import 'package:flutter/material.dart';
import 'Login.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign Up",
          style: TextStyle(color: Colors.white), // Mengatur warna teks menjadi putih
        ),
        backgroundColor: Color(0xff28124c), // Warna latar belakang AppBar
        iconTheme: IconThemeData(color: Colors.white), // Mengatur warna ikon navigasi menjadi putih
      ),
      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Image(
                image: AssetImage("lib/assets/images/logoNa.png"),
                height: 120,
                width: 160,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "Create your Account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color(0xff28124c),
                  ),
                ),
              ),
              SizedBox(height: 5),
              _buildTextField("Email", false, Icons.account_circle_outlined),
              SizedBox(height: 5),
              _buildTextField("Password", true, Icons.visibility_off),
              SizedBox(height: 5),
              _buildTextField("Confirm Password", true, Icons.visibility_off),
              SizedBox(height: 10),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return Login();
                    }),
                  );
                },
                color: Color(0xff28124c),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: EdgeInsets.all(16),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                textColor: Color(0xffffffff),
                height: 40,
                minWidth: 140,
              ),
              SizedBox(height: 15),
              Text(
                "-Or sign up with-",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xff3a3a3a),
                ),
              ),
              SizedBox(height: 10),
              Image(
                image: AssetImage("lib/assets/images/logosomed.png"),
                width: 120,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText, bool obscureText, IconData icon) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        obscureText: obscureText,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: Color(0xff000000),
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: Color(0xff28124c), width: 2),
          ),
          labelText: labelText,
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
          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          suffixIcon: Icon(icon, color: Color(0xcc212435), size: 24),
        ),
      ),
    );
  }
}
