///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        elevation: 4,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0x6647aed7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: Text(
          "Edit Profile",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 15,
            color: Color(0xff07002a),
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
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: Alignment.center,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset("lib/assets/images/profile.jpg",
                          fit: BoxFit.cover),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(0),
                      padding: EdgeInsets.all(0),
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff000832),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.edit,
                        color: Color(0xffffffff),
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: ListTile(
                  tileColor: Color(0x00ffffff),
                  title: Text(
                    "Username",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff424141),
                    ),
                    textAlign: TextAlign.start,
                  ),
                  subtitle: Text(
                    "Nafhisya Zevania",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 13,
                      color: Color(0xff000000),
                    ),
                    textAlign: TextAlign.start,
                  ),
                  dense: true,
                  contentPadding: EdgeInsets.all(0),
                  selected: false,
                  selectedTileColor: Color(0x42000000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  leading:
                      Icon(Icons.person, color: Color(0xff000c47), size: 24),
                  trailing:
                      Icon(Icons.edit, color: Color(0xe479797c), size: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Text(
                  "This is the username. This name will be visible when ordering items.",
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 9,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Divider(
                color: Color(0xffdddddd),
                height: 30,
                thickness: 0,
                indent: 50,
                endIndent: 0,
              ),
              ListTile(
                tileColor: Color(0x00ffffff),
                title: Text(
                  "Location",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff000000),
                  ),
                  textAlign: TextAlign.start,
                ),
                subtitle: Text(
                  "Malang, Jln.in aja No 27",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 13,
                    color: Color(0xff000000),
                  ),
                  textAlign: TextAlign.start,
                ),
                dense: true,
                contentPadding: EdgeInsets.all(0),
                selected: false,
                selectedTileColor: Color(0x42000000),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                leading:
                    Icon(Icons.location_on, color: Color(0xff000f56), size: 24),
                trailing: Icon(Icons.edit, color: Color(0xff79797c), size: 20),
              ),
              Divider(
                color: Color(0xffdddddd),
                height: 20,
                thickness: 0,
                indent: 50,
                endIndent: 0,
              ),
              ListTile(
                tileColor: Color(0x00ffffff),
                title: Text(
                  "Phone",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff000000),
                  ),
                  textAlign: TextAlign.start,
                ),
                subtitle: Text(
                  "+62 1234056789",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 13,
                    color: Color(0xff000000),
                  ),
                  textAlign: TextAlign.start,
                ),
                dense: true,
                contentPadding: EdgeInsets.all(0),
                selected: false,
                selectedTileColor: Color(0x42000000),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                leading: Icon(Icons.call, color: Color(0xff000f5b), size: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
