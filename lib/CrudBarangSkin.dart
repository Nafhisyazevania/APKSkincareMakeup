///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'Detail.dart';
import 'Cart.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CrudBarangSkin extends StatelessWidget {
  const CrudBarangSkin({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            width: MediaQuery.of(context).size.width,
            height: 160,
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 10, 58, 1),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.zero,
              border: Border.all(color: Color(0x4d9e9e9e), width: 1),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 30, 16, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Color(0xffdedede),
                          size: 24,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                          child: Text(
                            "Skincare",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 20,
                              color: Color(0xffefefef),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Cart()));
                          },
                          child: Icon(
                            Icons.shopping_cart,
                            color: Color(0xffefefef),
                            size: 24,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.waves,
                        color: Color(0xffefefef),
                        size: 24,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                    child: TextField(
                      controller: TextEditingController(),
                      obscureText: false,
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color(0xff000000),
                      ),
                      decoration: InputDecoration(
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide:
                              BorderSide(color: Color(0x00ffffff), width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide:
                              BorderSide(color: Color(0x00ffffff), width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide:
                              BorderSide(color: Color(0x00ffffff), width: 1),
                        ),
                        hintText: "Search by products, prices",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xff939393),
                        ),
                        filled: true,
                        fillColor: Color(0xfff9f9f9),
                        isDense: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        prefixIcon: Icon(Icons.search,
                            color: Color(0xff939393), size: 24),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GridView(
              padding: EdgeInsets.all(16),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: ClampingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 0,
                childAspectRatio: 0.55,
              ),
              children: [
                Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.all(0),
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xc500005c),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(9.0),
                        bottomRight: Radius.circular(9.0)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Detail()),
                              );
                            },
                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          child: Image(
                            image: AssetImage(
                                "lib/assets/images/bundle1.jpeg"),
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 8, 8, 0),
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Color(0xe5bfbfbf),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Color(0x4d9e9e9e), width: 1),
                            ),
                            child: Icon(
                              Icons.favorite,
                              color: Color(0xffffffff),
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "Glad to Glow 1 set ",
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 4, 0, 8),
                                // child: RatingBar.builder(
                                //   initialRating: 4,
                                //   unratedColor: Color(0xff9e9e9e),
                                //   itemBuilder: (context, index) => Icon(
                                //       Icons.star,
                                //       color: Color(0xffffda6b)),
                                //   itemCount: 5,
                                //   itemSize: 20,
                                //   direction: Axis.horizontal,
                                //   allowHalfRating: false,
                                //   onRatingUpdate: (value) {},
                                // ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                    child: Text(
                                      "Rp. 75.000",
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.all(0),
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xc600005c),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(9.0),
                        bottomRight: Radius.circular(9.0)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Detail()),
                              );
                            },
                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          child: Image(
                            image: AssetImage(
                                "lib/assets/images/skintific.jpeg"),
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                          ),
                          Container(
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Color(0xffa0a0a0),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Color(0x4d9e9e9e), width: 1),
                            ),
                            child: Icon(
                              Icons.favorite,
                              color: Color(0xffffffff),
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "Skintific Stickmask",
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 13,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 4, 0, 8),
                                // child: RatingBar.builder(
                                //   initialRating: 3,
                                //   unratedColor: Color(0xff9e9e9e),
                                //   itemBuilder: (context, index) => Icon(
                                //       Icons.star,
                                //       color: Color(0xffffc107)),
                                //   itemCount: 5,
                                //   itemSize: 20,
                                //   direction: Axis.horizontal,
                                //   allowHalfRating: false,
                                //   onRatingUpdate: (value) {},
                                // ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Rp. 70.000",
                                    textAlign: TextAlign.start,
                                    maxLines: 1,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  padding: EdgeInsets.all(0),
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xc9110d60),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(9.0),
                        bottomRight: Radius.circular(9.0)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Detail()),
                              );
                            },
                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          child: Image(
                            image: AssetImage(
                                "lib/assets/images/bundle2.jpeg"),
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 8, 9, 0),
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Color(0xffa0a0a0),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Color(0x4d9e9e9e), width: 1),
                            ),
                            child: Icon(
                              Icons.favorite,
                              color: Color(0xffffffff),
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "Building Brightening",
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 4, 0, 8),
                                // child: RatingBar.builder(
                                //   initialRating: 3,
                                //   unratedColor: Color(0xff9e9e9e),
                                //   itemBuilder: (context, index) => Icon(
                                //       Icons.star,
                                //       color: Color(0xffffc107)),
                                //   itemCount: 5,
                                //   itemSize: 20,
                                //   direction: Axis.horizontal,
                                //   allowHalfRating: false,
                                //   onRatingUpdate: (value) {},
                                // ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                    child: Text(
                                      "Rp. 150.000",
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  padding: EdgeInsets.all(0),
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xcd23156c),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(9.0),
                        bottomRight: Radius.circular(9.0)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Detail()),
                              );
                            },
                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          child: Image(
                            image: AssetImage(
                                "lib/assets/images/bundle3.jpeg"),
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 8, 8, 0),
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Color(0xffa0a0a0),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Color(0x4d9e9e9e), width: 1),
                            ),
                            child: Icon(
                              Icons.favorite,
                              color: Color(0xffffffff),
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "Centela Skin1004",
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 13,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 4, 0, 8),
                                // child: RatingBar.builder(
                                //   initialRating: 3,
                                //   unratedColor: Color(0xff9e9e9e),
                                //   itemBuilder: (context, index) => Icon(
                                //       Icons.star,
                                //       color: Color(0xffffc107)),
                                //   itemCount: 5,
                                //   itemSize: 20,
                                //   direction: Axis.horizontal,
                                //   allowHalfRating: false,
                                //   onRatingUpdate: (value) {},
                                // ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                    child: Text(
                                      "Rp. 550.000",
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
