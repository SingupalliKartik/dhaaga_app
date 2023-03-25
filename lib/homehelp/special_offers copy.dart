import 'package:flutter/material.dart';

class SpecialOfferscopy extends StatelessWidget {
  const SpecialOfferscopy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Trends Of Week 🔥',
            // ignore: prefer_const_constructors
            style: TextStyle(
              color: Color.fromARGB(157, 60, 26, 2),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SpecialOfferCard(
                  image: "images/photos/f1.jpg",
                  category: "Men Printed Shirt",
                  numOfBrands: 299,
                  press: () {},
                ),
                SpecialOfferCard(
                  image: "images/photos/g4 (1).png",
                  category: "Georgette Gown",
                  numOfBrands: 399,
                  press: () {},
                ),
                SpecialOfferCard(
                  image: "images/photos/f2.jpg",
                  category: "Men Shirt",
                  numOfBrands: 199,
                  press: () {},
                ),
                SpecialOfferCard(
                  image: "images/photos/white-g2.png",
                  category: "Women Fit& Flare",
                  numOfBrands: 399,
                  press: () {},
                ),
                SpecialOfferCard(
                  image: "images/photos/white-g5.png",
                  category: "Silk Gown ",
                  numOfBrands: 599,
                  press: () {},
                ),
                SpecialOfferCard(
                  image: "images/photos/f3.jpg",
                  category: "Slim Fit Printed",
                  numOfBrands: 399,
                  press: () {},
                ),
                SpecialOfferCard(
                  image: "images/photos/white-g6.png",
                  category: "Girl frock",
                  numOfBrands: 299,
                  press: () {},
                ),
                SizedBox(width: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: 150,
          height: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Expanded(child: Container()),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.0,
                        vertical: 10,
                      ),
                      child: Text.rich(
                        TextSpan(
                          style:
                              TextStyle(color: Color.fromARGB(255, 41, 5, 5)),
                          children: [
                            TextSpan(
                              text: "$category\n",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(text: "Starting@ $numOfBrands")
                          ],
                        ),
                      ),
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
