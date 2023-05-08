import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nitip_project/pages/home_page.dart';

class sing extends StatefulWidget {
  const sing({super.key});

  @override
  State<sing> createState() => _singState();
}

class _singState extends State<sing> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double widht = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: height = 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/boba.jpg"))),
                ),
                Positioned(
                    top: 16,
                    left: 16,
                    child: GestureDetector(
                        onTap: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => Home_Page(),
                            )),
                        child: Container(
                          child: Icon(Icons.arrow_back),
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ))),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Sing Fi Ting",
                      style: GoogleFonts.montserrat(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  height: height = 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Text("4.9 (1200 review)",
                      style: GoogleFonts.montserrat(
                          fontSize: 12, fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 70,
                  ),
                  Icon(
                    Icons.access_time,
                    color: Colors.black,
                  ),
                  Text("10.00 AM - 22.00 PM",
                      style: GoogleFonts.montserrat(
                          fontSize: 12, fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 30,
                  )
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 13,
                ),
                Icon(
                  Icons.location_on,
                  color: Colors.black,
                ),
                Text(
                  "Bogor Selatan",
                  style: GoogleFonts.montserrat(
                      fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Container(
                      width: 160,
                      height: 180,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/boba_2.jpg",
                            width: 170,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Brown Sugar Milk Tea",
                            style: GoogleFonts.montserrat(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Rp. 40.000",
                            style: GoogleFonts.montserrat(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Container(
                      width: 160,
                      height: 180,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/boba_3.jpg",
                            width: 170,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Brown Sugar Latte",
                            style: GoogleFonts.montserrat(
                                fontSize: 11, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Rp. 40.000",
                            style: GoogleFonts.montserrat(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    "Popular Boba",
                    style: GoogleFonts.montserrat(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Brown Sugar Boba Black Tea",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rp. 40.000",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Brown Sugar Boba Chocomilk",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rp. 40.000",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Brown Sugar Boba Coffee",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rp. 40.000",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Strawberry Boba Milk",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rp. 30.000",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Matcha Boba Milk",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rp. 40.000",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Brown Sugar Boba and Herbal Jelly",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rp. 40.000",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Brown Sugar Boba Milk",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rp. 40.000",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mango Boba Milk",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rp. 30.000",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Matcha Boba Milk",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rp. 30.000",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Chocomilk Boba",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rp. 40.000",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
