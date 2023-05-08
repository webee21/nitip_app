import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nitip_project/widget/category.dart';
import 'package:nitip_project/widget/snack.dart';
import 'package:nitip_project/widget/drinks.dart';
import 'package:nitip_project/widget/food.dart';
import 'package:nitip_project/widget/restaurant.dart';

import 'package:nitip_project/widget/food/curryhouse.dart';
import 'package:nitip_project/widget/food/hosana.dart';
import 'package:nitip_project/widget/food/pizzaduramo.dart';

import 'package:nitip_project/widget/drink/chocolate.dart';
import 'package:nitip_project/widget/drink/coffee.dart';
import 'package:nitip_project/widget/drink/juice.dart';

import 'package:nitip_project/widget/snack/bread.dart';
import 'package:nitip_project/widget/snack/kebabsawarma.dart';
import 'package:nitip_project/widget/snack/martabaksaleh.dart';

class HomePage__ extends StatefulWidget {
  HomePage__({Key? key}) : super(key: key);

  @override
  State<HomePage__> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage__> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 0,
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
                                hintText: "Cari di aplikasi NiTiP",
                                prefixIcon: Icon(Icons.search),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 2),
                                    borderRadius: BorderRadius.circular(30)))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => drinks()),
                              );
                            },
                            child: Category(
                                imagePath: "assets/drink.jpg", title: "Drinks"),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => food()),
                              );
                            },
                            child: Category(
                                imagePath: "assets/food.jpg", title: "Food"),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => snack()),
                              );
                            },
                            child: Category(
                                imagePath: "assets/snack.jpg", title: "Snack"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        "Top Seller",
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
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
                      child: Restaurant(
                        imagePath: "assets/curry.png",
                        nameShop: "Curry House",
                        rating: "4.9",
                        jamBuka: "10.00 AM - 21.00 PM",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => hosana()),
                        );
                      },
                      child: Restaurant(
                          imagePath: "assets/ayam.png",
                          nameShop: "Hosana",
                          rating: "4.8",
                          jamBuka: "24 Hours"),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => pizzaduramo()),
                        );
                      },
                      child: Restaurant(
                          imagePath: "assets/pizza_2.png",
                          nameShop: "Pizza Duramo",
                          rating: "4.9",
                          jamBuka: "10.00 PM - 21.00 PM"),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => bread()),
                        );
                      },
                      child: Restaurant(
                          imagePath: "assets/roti.jpg",
                          nameShop: "Bread Toast",
                          rating: "4.5",
                          jamBuka: "17.00 PM - 23.00 PM"),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => kebabsawarma()),
                        );
                      },
                      child: Restaurant(
                        imagePath: "assets/kebab_4.jpg",
                        nameShop: "Kebab Sawarna",
                        rating: "4.9",
                        jamBuka: "10.00 AM - 21.00 PM",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => martabaksaleh()),
                        );
                      },
                      child: Restaurant(
                          imagePath: "assets/martabak_2.png",
                          nameShop: "Martabak",
                          rating: "4.7",
                          jamBuka: "18.00 PM - 23.00 PM"),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => chocolate()),
                        );
                      },
                      child: Restaurant(
                          imagePath: "assets/coklat.jpg",
                          nameShop: "Chocolate House",
                          rating: "4.8",
                          jamBuka: "10.00 AM - 21.00 PM"),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => coffee()),
                        );
                      },
                      child: Restaurant(
                        imagePath: "assets/kopi.jpg",
                        nameShop: "Coffee House",
                        rating: "4.8",
                        jamBuka: "10.00 AM - 22.00 PM",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => juice()),
                        );
                      },
                      child: Restaurant(
                          imagePath: "assets/jus.jpg",
                          nameShop: "Juice Drinks",
                          rating: "4.5",
                          jamBuka: "10.00 AM - 21.00 PM"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
