import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:nitip_project/pages/home_page.dart';
import 'package:nitip_project/widget/snack/bread.dart';
import 'package:nitip_project/widget/snack/kebabsawarma.dart';
import 'package:nitip_project/widget/snack/martabaksaleh.dart';
import 'package:nitip_project/widget/snack/cookies.dart';
import 'package:nitip_project/widget/snack/pancake.dart';

class snack extends StatefulWidget {
  const snack({super.key});

  @override
  State<snack> createState() => _snackState();
}

class _snackState extends State<snack> {
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
                height: 0,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  "Popular Snack",
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
                          hintText: "Cari Snack Favoritmu",
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
                    MaterialPageRoute(builder: (context) => kebabsawarma()),
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
                              child: Image.asset("assets/kebab_4.jpg",
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
                                "Kebab Sawarma",
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
                                    "17.00 PM - 23.00 PM",
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
                    MaterialPageRoute(builder: (context) => martabaksaleh()),
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
                              child: Image.asset("assets/martabak_2.png",
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
                                "Martabak Saleh",
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
                                    "17.00 PM - 23.00 PM",
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
                    MaterialPageRoute(builder: (context) => cookies()),
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
                              child: Image.asset("assets/cookies.jpg",
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
                                "Cookies and Milk",
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
                    MaterialPageRoute(builder: (context) => pancake()),
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
                              child: Image.asset("assets/pancake.jpg",
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
                                "Pancake House",
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
                    MaterialPageRoute(builder: (context) => bread()),
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
                              child: Image.asset("assets/roti.jpg",
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
                                "Bread Toast",
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
                                    "17.00 PM - 23.00 PM",
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
