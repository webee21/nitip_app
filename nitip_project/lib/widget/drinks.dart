import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:nitip_project/pages/home_page.dart';
import 'package:nitip_project/widget/drink/chocolate.dart';
import 'package:nitip_project/widget/drink/coffee.dart';
import 'package:nitip_project/widget/drink/juice.dart';
import 'package:nitip_project/widget/drink/milkshake.dart';
import 'package:nitip_project/widget/drink/sing.dart';

class drinks extends StatefulWidget {
  const drinks({super.key});

  @override
  State<drinks> createState() => _drinksState();
}

class _drinksState extends State<drinks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Positioned(
                  top: 16,
                  left: 16,
                  child: GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
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
                height: 00,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  "Popular Drinks",
                  style: GoogleFonts.montserrat(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFFF5F5F7),
                      borderRadius: BorderRadius.circular(30)),
                  child: TextField(
                      cursorHeight: 20,
                      autofocus: false,
                      decoration: InputDecoration(
                          hintText: "Cari Minuman Favoritmu",
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                              borderRadius: BorderRadius.circular(30)))),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => sing()),
                  );
                },
                child: SizedBox(
                  width: double.infinity,
                  height: 210,
                  child: Stack(
                    children: [
                      Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 150,
                              child: Image.asset("assets/boba.jpg",
                                  fit: BoxFit.cover),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 10,
                        child: SizedBox(
                          height: 50,
                          child: Column(
                            children: [
                              Text(
                                "Sing Fi Ting",
                                style: GoogleFonts.montserrat(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.amber),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "4.9",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 150,
                                  ),
                                  Icon(Icons.access_time, color: Colors.black),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "10.00 AM - 22.00 PM",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
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
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => coffee()),
                  );
                },
                child: SizedBox(
                  width: double.infinity,
                  height: 210,
                  child: Stack(
                    children: [
                      Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 150,
                              child: Image.asset("assets/kopi.jpg",
                                  fit: BoxFit.cover),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 10,
                        child: SizedBox(
                          height: 50,
                          child: Column(
                            children: [
                              Text(
                                "Coffee House",
                                style: GoogleFonts.montserrat(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.amber),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "4.8",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 150,
                                  ),
                                  Icon(Icons.access_time, color: Colors.black),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "10.00 AM - 22.00 PM",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
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
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => chocolate()),
                  );
                },
                child: SizedBox(
                  width: double.infinity,
                  height: 210,
                  child: Stack(
                    children: [
                      Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 150,
                              child: Image.asset("assets/coklat.jpg",
                                  fit: BoxFit.cover),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 10,
                        child: SizedBox(
                          height: 50,
                          child: Column(
                            children: [
                              Text(
                                "Chocolate House",
                                style: GoogleFonts.montserrat(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.amber),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "4.8",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 150,
                                  ),
                                  Icon(Icons.access_time, color: Colors.black),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "10.00 AM - 21.00 PM",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
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
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => juice()),
                  );
                },
                child: SizedBox(
                  width: double.infinity,
                  height: 210,
                  child: Stack(
                    children: [
                      Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 150,
                              child: Image.asset("assets/jus.jpg",
                                  fit: BoxFit.cover),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 10,
                        child: SizedBox(
                          height: 50,
                          child: Column(
                            children: [
                              Text(
                                "Juice Drinks",
                                style: GoogleFonts.montserrat(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.amber),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "4.5",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 150,
                                  ),
                                  Icon(Icons.access_time, color: Colors.black),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "10.00 AM - 21.00 PM",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
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
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => milkshake()),
                  );
                },
                child: SizedBox(
                  width: double.infinity,
                  height: 210,
                  child: Stack(
                    children: [
                      Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 150,
                              child: Image.asset("assets/milkshake_4.jpg",
                                  fit: BoxFit.cover),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 10,
                        child: SizedBox(
                          height: 50,
                          child: Column(
                            children: [
                              Text(
                                "Milkshake Drinks House",
                                style: GoogleFonts.montserrat(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.amber),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "4.6",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 150,
                                  ),
                                  Icon(Icons.access_time, color: Colors.black),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "10.00 AM - 22.00 PM",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
