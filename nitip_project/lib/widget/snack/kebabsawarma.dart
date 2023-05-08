import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nitip_project/pages/home_page.dart';

class kebabsawarma extends StatefulWidget {
  const kebabsawarma({super.key});

  @override
  State<kebabsawarma> createState() => _kebabsawarmaState();
}

class _kebabsawarmaState extends State<kebabsawarma> {
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
                          image: AssetImage("assets/kebab_4.jpg"))),
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
                      "Kebab Sawarma",
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
                  Text("4.9 (1100 review)",
                      style: GoogleFonts.montserrat(
                          fontSize: 12, fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 70,
                  ),
                  Icon(
                    Icons.access_time,
                    color: Colors.black,
                  ),
                  Text("17.00 PM - 23.00 PM",
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
                  "Jakarta Pusat",
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
                            "assets/kebab.jpg",
                            width: 170,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Small Beef Kebab",
                            style: GoogleFonts.montserrat(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Rp. 20.000",
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
                            "assets/kebab_3.jpg",
                            width: 170,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Large Beef Kebab",
                            style: GoogleFonts.montserrat(
                                fontSize: 11, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Rp. 25.000",
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
                    "Popular Food",
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
                    "Small Chicken Kebab",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rp. 18.000",
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
                    "Large Chicken Kebab",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rp. 23.000",
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
                    "Small Beef Kebab Mozzarella",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rp. 25.000",
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
                    "Large Beef Kebab Mozzarella",
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
                    "Small Chicken Kebab Mozzarella",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rp. 23.000",
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
                    "Large Chicken Kebab Mozzarella",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rp. 28.000",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    "Drinks",
                    style: GoogleFonts.montserrat(
                        fontSize: 18, fontWeight: FontWeight.bold),
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
                    "Mineral Water",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rp. 5.000",
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
                    "Coca Cola",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rp. 7.000",
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
                    "Fanta",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rp. 7.000",
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
                    "Pepsi",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rp. 7.000",
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
                    "Sprite",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rp. 7.000",
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
                    "Es Jeruk",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rp. 10.000",
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
                    "Es Teh",
                    style: GoogleFonts.montserrat(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rp. 5.000",
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
