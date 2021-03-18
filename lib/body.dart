import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ListView(
            children: [
              tile("assets/image1.jpg", "Ocean at Algarve",
                  "Enjoy view over sky blue ocean from your home", "25", "Aug"),
              tile(
                  "assets/image2.jpg",
                  "Antelope Canyon",
                  "Must have on a bucket list because it\'s awesome",
                  "1",
                  "Sep"),
              tile("assets/image3.jpg", "Ocean at Algarve",
                  "Enjoy view over sky blue ocean from your home", "25", "Aug"),
              tile("assets/image3.jpg", "Ocean at Algarve",
                  "Enjoy view over sky blue ocean from your home", "25", "Aug"),
            ],
          ),
        )
      ],
    );
  }

  Tab tab(String label) {
    return Tab(
      child: Text(
        "$label",
        style: GoogleFonts.barlowSemiCondensed(
          color: Colors.black45,
          fontSize: 15.0,
        ),
      ),
    );
  }

  Container tile(
    String image,
    String top,
    String down,
    String btop,
    String bdown,
  ) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(
                image: AssetImage(
                  "$image",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 5, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "$top",
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.barlowSemiCondensed(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "$down",
                        style: GoogleFonts.barlowSemiCondensed(
                            fontSize: 14.0, color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 60,
                  child: InkWell(
                    onTap: () {},
                    child: Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "$btop",
                              style: GoogleFonts.barlowSemiCondensed(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                            Text(
                              "$bdown",
                              style: GoogleFonts.barlowSemiCondensed(
                                  fontSize: 12.0, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
