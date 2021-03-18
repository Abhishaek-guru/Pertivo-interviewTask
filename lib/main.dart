import 'package:flutter/material.dart';
import 'package:pertivo/body.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        home: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            toolbarHeight: 110,
            title: Text(
              "Locations",
              style: GoogleFonts.barlowSemiCondensed(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              Container(
                margin: EdgeInsets.only(right: 20, top: 10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  elevation: 5.0,
                  child: ClipRRect
                  
                  (
                    borderRadius: BorderRadius.circular(100.0),
                    
                    child: Image(image: AssetImage("assets/profile.jpg"))),
                )
              ),
            ],
            bottom: TabBar(
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black38,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.blue[400],
              tabs: <Widget>[
                tab("Featured"),
                tab("Popular"),
                tab("Trending"),
              ],
            ),
          ),
          body: TabBarView(children: [
            Body(),
            Body(),
            Body(),
          ]),
        ),
      ),
    );
  }
}

Tab tab(String label) {
  return Tab(
    text: "$label",
  );
}
