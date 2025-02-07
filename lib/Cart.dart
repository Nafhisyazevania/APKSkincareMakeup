import 'package:flutter/material.dart';
import 'Transaksi.dart';
import 'Detail.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  // ScrollController to control the scroll position
  ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();  // Dispose the controller to avoid memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffebebeb),
      appBar: AppBar(
        elevation: 4,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff9ab4f0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: Text(
          "Cart",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Color(0xff000000),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff9ab4f0),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 5,
                ),
              ],
            ),
            padding: EdgeInsets.all(8),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 24,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: ListView(
              controller: _scrollController,  // Set the scroll controller
              padding: EdgeInsets.all(8),
              children: [
                _buildCartItem(context, "lib/assets/images/bundle4.jpg", "Skincare 1 Bundle", "For oily skin", "Rp. 400.000"),
                _buildCartItem(context, "lib/assets/images/bundle3.jpeg", "1 Bundle Brightening", "For dry skin", "Rp. 350.000"),
              ],
            ),
          ),
          _buildTotalSection(context),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Scroll to the top of the list
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

  // Extracted function to build cart items for reusability
  Widget _buildCartItem(BuildContext context, String imagePath, String title, String subtitle, String price) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      color: Color(0xffffffff),
      shadowColor: Color(0xff000000),
      elevation: 4, // Improved elevation for a shadow effect
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0), // More rounded corners for modern look
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Detail()),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0), // More rounded corners for modern look
                bottomLeft: Radius.circular(16.0),
              ),
              child: Image(
                image: AssetImage(imagePath),
                height: 130,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(8, 20, 8, 8), // Adjusted padding for better alignment
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                    child: Text(
                      subtitle,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xff7a7a7a),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                    child: Text(
                      price,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Icon(
              Icons.more_vert,
              color: Color(0xff212435),
              size: 24,
            ),
          ),
        ],
      ),
    );
  }

  // Total amount section at the bottom
  Widget _buildTotalSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(0),
      padding: EdgeInsets.all(0),
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        color: Color(0xff000630),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        border: Border.all(color: Color(0x4d9e9e9e), width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: Align(
              alignment: Alignment(-0.7, 0.0),
              child: Text(
                "Total Amount",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Align(
              alignment: Alignment(-0.7, 0.0),
              child: Text(
                "Rp. 750.000",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(140, 0, 0, 0),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Transaksi()),
                );
              },
              color: Color(0xff99eaeb),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide(color: Color(0xff808080), width: 1),
              ),
              padding: EdgeInsets.all(16),
              child: Text(
                "Check Out",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              textColor: Color(0xff000000),
              height: 40,
              minWidth: 140,
            ),
          ),
        ],
      ),
    );
  }
}
