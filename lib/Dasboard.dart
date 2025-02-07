import 'package:flutter/material.dart';
import 'CrudBarangMakeup.dart';
import 'CrudBarangSkin.dart';
import 'Detail.dart';
import 'Profil.dart';
import 'Cart.dart';

class Dasboard extends StatelessWidget {
  const Dasboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(5, 20, 5, 16), // Increased top padding
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("lib/assets/images/logoNa.png",
                        fit: BoxFit.cover),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Text(
                        "NaS&m",
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                          color: Color(0xff28124c),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: Icon(
                      Icons.search,
                      color: Color(0xff212435),
                      size: 24,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Cart()));
                    },
                    child: Icon(
                      Icons.shopping_cart,
                      color: Color.fromARGB(255, 36, 53, 33),
                      size: 24,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profil()));
                    },
                    child: Icon(
                      Icons.account_circle,
                      color: Color(0xff212435),
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),

            ///***If you have exported images you must have to copy those images in assets/images directory.
            Image(
              image: AssetImage("lib/assets/images/banner.png"),
              height: 100,
              width: 190,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
              padding: EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.zero,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 8, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Profil()),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.all(0),
                              padding: EdgeInsets.all(8),
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0xffd5cfff),
                                shape: BoxShape.circle,
                              ),
                              child: ImageIcon(
                                AssetImage("lib/assets/images/face-nav.png"),
                                size: 24,
                                color: Color(0xf528124c),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                            child: Text(
                              "Skin Type",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                fontSize: 12,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.all(0),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CrudBarangSkin()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: Alignment(-0.2, 0.0),
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                        "lib/assets/images/bundle3.jpeg",
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 8, 0, 0),
                                  child: Text(
                                    "Skincare",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CrudBarangMakeup()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                      "lib/assets/images/fondation.jpeg",
                                      fit: BoxFit.cover),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                  child: Text(
                                    "Makeup",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Popular",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontSize: 18,
                    color: Color(0xf828124c),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 4, 0, 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "product popular today",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 12,
                    color: Color(0xff9e9e9e),
                  ),
                ),
              ),
            ),

            GridView(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 1,
              ),
              children: [
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Detail()),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6.0),
                        child: Image(
                          image: AssetImage("lib/assets/images/bundle3.jpeg"),
                          height: 140,
                          width: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Detail()),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6.0),
                        child: Image(
                          image: AssetImage("lib/assets/images/bundle4.jpg"),
                          height: 140,
                          width: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Detail()),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6.0),
                        child: Image(
                          image: AssetImage("lib/assets/images/fondation.jpeg"),
                          height: 140,
                          width: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6.0),
                      child: Image(
                        image: AssetImage("lib/assets/images/fondation.jpeg"),
                        height: 140,
                        width: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Detail()),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6.0),
                        child: Image(
                          image: AssetImage("lib/assets/images/bundle1.jpeg"),
                          height: 140,
                          width: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Detail()),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6.0),
                        child: Image(
                          image: AssetImage("lib/assets/images/skintific.jpeg"),
                          height: 140,
                          width: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              color: Color(0xffe3e1e1),
              height: 16,
              thickness: 8,
              indent: 0,
              endIndent: 0,
            ),
          ],
        ),
      ),
    );
  }
}
