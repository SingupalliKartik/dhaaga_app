import 'package:flutter/material.dart';




class CartCard3 extends StatelessWidget {
  const CartCard3({super.key});



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
            child: Image.asset('images/photos/f8.jpg'),
          ),
        ),
      ),
      SizedBox(width: 20),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Men Regular,Shirt",
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
                        text: " 332",
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
              Text('   2     '),
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