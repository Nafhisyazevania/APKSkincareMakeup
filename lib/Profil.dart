///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'EditProfile.dart';
import 'Cart.dart';
import 'NaSmPay.dart';
import 'Fav.dart';
import 'Login.dart';
import 'Dasboard.dart';
// import 'package:lottie/lottie.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0x7f127a8e),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 20,
            color: Color(0xff000a30),
          ),
        ),
        leading: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Color(0xffdedede),
                          size: 24,
                        ),
                      ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
// Lottie.network(
// "https://assets8.lottiefiles.com/packages/lf20_8ydmsved.json",
// height:200,
// width:200,
// fit:BoxFit.cover,
// repeat: true,
// animate: false,
// ),
                        Align(
                          alignment: Alignment(0.0, 0.1),
                          child: Container(
                            height: 100,
                            width: 100,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset("lib/assets/images/profile.jpg",
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: Text(
                            "Nafhisya Zevania",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              fontSize: 18,
                              color: Color(0xff00073b),
                            ),
                          ),
                        ),
                        GestureDetector(
              // Wrap Text with GestureDetector
                          onTap: () {
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => EditProfile()),
                            );
                          },
                        child: Icon(
                          Icons.settings,
                          color: Color(0xff212435),
                          size: 15,
                        ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 8, 0, 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.waves,
                          color: Color(0xff212435),
                          size: 24,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                          child: Text(
                            "Oily Skin",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              color: Color(0xff0f2179),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(0),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff000833),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.lock,
                            color: Color(0xffe6e9ff),
                            size: 20,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 16),
                            child: GestureDetector(
              // Wrap Text with GestureDetector
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => EditProfile()),
                                );
                              },
                            child: Text(
                              "Privacy & Setting",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xff000000),
                              ),
                            ),
                                ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff050033),
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(0),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff000a3e),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.shopping_cart,
                            color: Color(0xffe2e7ff),
                            size: 20,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 16),
                                child: GestureDetector(
              // Wrap Text with GestureDetector
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Cart()),
                                );
                              },
                            child: Text(
                              "Cart",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xff000000),
                              ),
                            ),
                                ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff010a3b),
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(0),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff000a3c),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.credit_card,
                            color: Color(0xffe5e9ff),
                            size: 20,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 16),
                                child: GestureDetector(
              // Wrap Text with GestureDetector
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => NaSmPay()),
                                );
                              },
                            child: Text(
                              "NaS&m Pay",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xff000000),
                              ),
                            ),
                                ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff000934),
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(0),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff000831),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.add_shopping_cart,
                            color: Color(0xffe6ebff),
                            size: 20,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 16),
                                child: GestureDetector(
              // Wrap Text with GestureDetector
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Dasboard()),
                                );
                              },
                            child: Text(
                              "Add Cart",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xff000000),
                              ),
                            ),
                                ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff000830),
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(0),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff000a3d),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.favorite,
                            color: Color(0xffe3e8ff),
                            size: 20,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 16),
                                child: GestureDetector(
              // Wrap Text with GestureDetector
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Fav()),
                                );
                              },
                            child: Text(
                              "Favorite Items",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xff000000),
                              ),
                            ),
                                ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xff00072a),
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                padding: EdgeInsets.all(0),
                width: 180,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0x273ae8ce),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24.0),
                      bottomRight: Radius.circular(24.0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.logout,
                      color: Color(0xff010930),
                      size: 24,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                      child: GestureDetector(
              // Wrap Text with GestureDetector
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Login()),
                                );
                              },
                      child: Text(
                        "Sign Out",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          color: Color(0xff000b41),
                        ),
                      ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
