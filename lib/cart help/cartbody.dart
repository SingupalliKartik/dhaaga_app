// import 'package:flutter/material.dart';
// import 'package:dhaagafinal/constants.dart';

// // import 'featurred_plants.dart';

// import '../help/btn.dart';
// import 'cbtn.dart';

// // import 'recomend_plants.dart';
// // import 'title_with_more_bbtn.dart';

// class cartbody extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // It will provie us total height  and width of our screen
//     Size size = MediaQuery.of(context).size;
//     // it enable scrolling on small device
//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[

//           cbtn(),

//           const SizedBox(
//                           height: 20,
//                         ),
//          // TitleWithMoreBtn(title: "Recomended", press: () {}),
//           // RecomendsPlants(),
//           // TitleWithMoreBtn(title: "Featured Plants", press: () {}),
//           // FeaturedPlants(),
//           SizedBox(height: kDefaultPadding),
//         ],
//       ),
//     );
//   }

// }

import 'package:flutter/material.dart';

import 'cadr.dart';
import 'cards.dart';
import 'cbtn.dart';

class cartbody extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<cartbody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),

      // ignore: sort_child_properties_last
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(15),
            ),
            child: CartCard(),
          )
        ],
      ),
      key: Key('katik'),
    );
  }
}
