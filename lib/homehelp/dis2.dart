import 'package:flutter/material.dart';
import 'package:dhaagafinal/constants.dart';

// import 'featurred_plants.dart';

import '../discover help/d1.dart';
import '../discover help/d2.dart';
import '../discover help/d3.dart';
import 'header_with_seachbox.dart';

// import 'recomend_plants.dart';
// import 'title_with_more_bbtn.dart';

class dis2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          const d1(),
          
  
          const d2(),

          const d3(),
          // TitleWithMoreBtn(title: "Recomended", press: () {}),
          // RecomendsPlants(),
          // TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          // FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }


   
        
}
