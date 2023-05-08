import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:nitip_project/pages/home_page.dart';
import 'package:nitip_project/widget/food/curryhouse.dart';
import 'package:nitip_project/widget/food/dongkeys.dart';
import 'package:nitip_project/widget/food/hosana.dart';
import 'package:nitip_project/widget/food/pizzaduramo.dart';
import 'package:nitip_project/widget/food/steak212.dart';
import 'package:nitip_project/widget/food/satemadura.dart';
import 'package:nitip_project/widget/food/sotocakman.dart';
import 'package:nitip_project/widget/food/ramenno.dart';

class food extends StatefulWidget {
  const food({super.key});

  @override
  State<food> createState() => _foodState();
}

class _foodState extends State<food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
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
                  "Popular Food",
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
                          hintText: "Cari Makanan Favoritmu",
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
                    MaterialPageRoute(builder: (context) => dongkeys()),
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
                              child: Image.asset("assets/burger_5.jpg",
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
                                "Dongkeys Burgers",
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
                                    "5.0",
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
                                    "10.00 PM - 22.00 PM",
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
                    MaterialPageRoute(builder: (context) => pizzaduramo()),
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
                              child: Image.asset("assets/pizza_2.png",
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
                                "Pizza Duramo",
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
                    MaterialPageRoute(builder: (context) => hosana()),
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
                              child: Image.asset("assets/ayam.jpg",
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
                                "Hosana Restaurant",
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
                                    "11.00 AM - 22.00 PM",
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
                    MaterialPageRoute(builder: (context) => curryhouse()),
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
                              child: Image.asset("assets/curry.png",
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
                                "Curry House",
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
                    MaterialPageRoute(builder: (context) => steak212()),
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
                              child: Image.asset("assets/steak.png",
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
                                "Steak 212",
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
                                    "13.00 PM - 21.00 PM",
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
                    MaterialPageRoute(builder: (context) => ramenno()),
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
                              child: Image.asset("assets/ramen.png",
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
                                "Ramen NO",
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => satemadura()),
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
                              child: Image.asset("assets/sate.png",
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
                                "Sate Madura H Ismail",
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
                                    "18.00 PM - 00.00 AM",
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
                    MaterialPageRoute(builder: (context) => sotocakman()),
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
                              child: Image.asset("assets/soto.png",
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
                                "Soto Cakman",
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
                                    "07.00 AM - 23.00 PM",
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
