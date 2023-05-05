import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Restaurant extends StatelessWidget {
  final String imagePath;
  final String nameShop;
  final String rating;
  final String jamBuka;
  const Restaurant(
      {Key? key,
      required this.imagePath,
      required this.nameShop,
      required this.rating,
      required this.jamBuka})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 210,
      child: Stack(
        children: [
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 10,
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 150,
                  child: Image.asset(imagePath, fit: BoxFit.cover),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 10,
            child: SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(nameShop,
                        style: GoogleFonts.montserrat(
                            fontSize: 15, fontWeight: FontWeight.bold)),
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
                          rating,
                          style: GoogleFonts.montserrat(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.access_time, color: Colors.black),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          jamBuka,
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
