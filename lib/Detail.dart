import 'package:flutter/material.dart';
import 'Cart.dart';
import 'Transaksi.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  // ScrollController to control the scroll position
  ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();  // Dispose of the controller to avoid memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 10, 58, 1),
      body: SingleChildScrollView(
        controller: _scrollController,  // Attach the scroll controller
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Icon(
                  Icons.arrow_back,
                  color: Color(0xffdedede),
                  size: 24,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Image(
                    image: AssetImage("lib/assets/images/skintific.jpeg"),
                    height: 220,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.all(0),
                      padding: EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.65,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    "Skintific Mugwort",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                  child: Text(
                                    "4.5",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                              child: Text(
                                "Menjaga skin barier dan merawat kulit berjerawat",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                              child: Text(
                                "Acne Oily Skin",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Color(0xff28124c),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                              child: Row(
                                children: [
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) {
                                          return Cart();
                                        }),
                                      );
                                    },
                                    color: Color(0xff000e4b),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      side: BorderSide(
                                          color: Color(0xff808080), width: 1),
                                    ),
                                    padding: EdgeInsets.all(16),
                                    child: Text(
                                      "Add to Cart",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    textColor: Color(0xffffffff),
                                    height: 40,
                                    minWidth: 140,
                                  ),
                                  SizedBox(width: 8), // Added spacing between buttons
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) {
                                          return Transaksi();
                                        }),
                                      );
                                    },
                                    color: Color(0xff6ea2d6),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      side: BorderSide(
                                          color: Color(0xff808080), width: 1),
                                    ),
                                    padding: EdgeInsets.all(16),
                                    child: Text(
                                      "Buy",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    textColor: Color(0xffffffff),
                                    height: 40,
                                    minWidth: 140,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Scroll to the top of the content
          _scrollController.animateTo(
            0,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        backgroundColor: Color(0xff9ab4f0),
        child: Icon(
          Icons.arrow_upward,
          color: Colors.white,
        ),
      ),
    );
  }
}
