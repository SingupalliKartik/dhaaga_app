import 'package:flutter/material.dart';



class d1 extends StatelessWidget {
  const d1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ 
        
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal:20),
         
        ),
        SizedBox(height:20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "images/photos/c2.png",
                category: "Smartphone",
                numOfBrands: 18,
                press: () {},
              ),
              SpecialOfferCard(
                image: "images/photos/transparent-card1.png",
                category: "Fashion",
                numOfBrands: 24,
                press: () {},
              ),SpecialOfferCard(
               image: "images/photos/transparent-card7.png",
                category: "Fashion",
                numOfBrands: 24,
                press: () {},
              ),SpecialOfferCard(
               image: "images/photos/transparent-card10.png",
                category: "Fashion",
                numOfBrands: 24,
                press: () {},
              ),SpecialOfferCard(
               image: "images/photos/c9.png",
                category: "Fashion",
                numOfBrands: 24,
                press: () {},
              ),
              SizedBox(width: 20),
            ],
          ),
        ),
      ],
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
          width: 100,
          height: 120,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Center(
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
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
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 10,
                  ),
                  // child: Text.rich(
                  //   TextSpan(
                  //     style: TextStyle(color: Color.fromARGB(255, 41, 5, 5)),
                  //     children: [
                  //       TextSpan(
                  //         text: "$category\n",
                  //         style: TextStyle(
                  //           fontSize: 18,
                  //           fontWeight: FontWeight.bold,
                  //         ),
                  //       ),
                  //       TextSpan(text: "$numOfBrands Brands")
                  //     ],
                  //   ),
                  // ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}