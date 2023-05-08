import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nitip_project/pages/home_page.dart';
import 'package:provider/provider.dart';

import '../../model/food/ramenno.dart';
import '../../components/grocery_tile.dart';
import '../../pages/cart_pages.dart';

class ramenno extends StatefulWidget {
  const ramenno({super.key});

  @override
  State<ramenno> createState() => _ramennoState();
}

class _ramennoState extends State<ramenno> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CartPage();
            },
          ),
        ),
        child: const Icon(Icons.shopping_bag),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 220,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/burger_2.jpg"))),
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
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Dongkeys Burgers",
                    style: GoogleFonts.montserrat(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                height: 40,
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
                Text("5.0 (1233 review)",
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
                "Tanjung Duren Utara",
                style: GoogleFonts.montserrat(
                    fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Expanded(
            child: Consumer<RamenModel>(
              builder: (context, value, child) {
                return GridView.builder(
                  padding: const EdgeInsets.all(12),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: value.shopItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.2,
                  ),
                  itemBuilder: (context, index) {
                    return GroceryTile(
                      itemName: value.shopItems[index][0],
                      itemPrice: value.shopItems[index][1],
                      imagePath: value.shopItems[index][2],
                      color: value.shopItems[index][3],
                      onPressed: () =>
                          Provider.of<RamenModel>(context, listen: false)
                              .addItemToCart(index),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
