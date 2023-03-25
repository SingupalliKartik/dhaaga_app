import 'package:dhaagafinal/cart%20help/cbtn.dart';
import 'package:flutter/material.dart';
import 'package:dhaagafinal/constants.dart';

// import 'featurred_plants.dart';

import '../help/btn.dart';
import 'cadr copy 3.dart';
import 'cadr copy.dart';
import 'cadr.dart';
import 'cards.dart';

// import 'recomend_plants.dart';
// import 'title_with_more_bbtn.dart';

class finalcart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            const CartCard4(),
    
            const SizedBox(
              height: 20,
            ),
            const CartCard(),
            const SizedBox(
              height: 20,
            ),
            const CartCard2(),
            const SizedBox(
              height: 20,
            ),
            const CartCard3(),
 const SizedBox(
              height: 10,
            ),
            const cbtn(),
            // const d3(),
            // TitleWithMoreBtn(title: "Recomended", press: () {}),
            // RecomendsPlants(),
            // TitleWithMoreBtn(title: "Featured Plants", press: () {}),
            // FeaturedPlants(),
            // SizedBox(height: kDefaultPadding),
          ],
        ),
      ),
    );
  }
}
