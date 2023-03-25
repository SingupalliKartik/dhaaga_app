import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key});

  // int _count =1;
  // void _increment() { 
  //   setState((){ 
  //     _count++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(
        width: 88,
        child: AspectRatio(
          aspectRatio: 0.88,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFFF5F6F9),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset('images/photos/n4.jpg'),
          ),
        ),
      ),
      SizedBox(width: 20),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Men Fit Printed Casual Shirt",
            style: TextStyle(color: Colors.black, fontSize: 16),
            maxLines: 2,
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text.rich(TextSpan(
                  text: "Shirts",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.black),
                  children: [
                    TextSpan(
                        text: "   379   ",
                        style: Theme.of(context).textTheme.bodyText1),
                    TextSpan(
                        text: "     ",
                        style: Theme.of(context).textTheme.bodyText1),
                  ])),
              SizedBox(
                  width: 35,
                  height: 35,
                  child: FittedBox(
                    child: FloatingActionButton(
                      child: Image.asset('images/minus-.png'),
                                          backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      onPressed: () {},
                    ),
                  )),
              Text("   1   "),
              SizedBox(
                  width: 35,
                  height: 35,
                  child: FittedBox(
                      child: FloatingActionButton(
                    child: Image.asset('images/add.png'),
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    onPressed: () {},
                  ))),
            ],
          ),
        ],
      ),
    ]);
  }
}
//  Row(
                      
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,      
//                                 children: [FloatingActionButton(
//                                   child: Icon(Icons.add),
//                                   onPressed: (){},
//                                 ),
//                                 Text('2')
//                                 FloatingActionButton(
//                                   child: Icon(Icons.remove),
//                                   onPressed: (){},
//                                 )
                      
//                                 ],
//                               ),
//              
//                 ]