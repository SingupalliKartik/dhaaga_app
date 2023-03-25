import 'dart:io';

import 'package:dhaagafinal/cart.dart';
import 'package:dhaagafinal/homehelp/discover.dart';
import 'package:dhaagafinal/login.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher.dart';

import 'body.dart';
import 'constants.dart';
import 'drawerhelp/my_drawer_hearder.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: buildAppBar(),

      drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          child: Column(
            children: [
              Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  color: Color.fromARGB(255, 233, 211, 175),
                  child: Center(
                      child: Column(
                    children: [
                      Center(
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/logo1.png'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ))),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.new_releases),
              ),
              Divider(),
              ListTile(
                title: Text("Reviews"),
                leading: Icon(Icons.message),
                onTap: () {
                  // _launchURL();

                  // if (await canLaunch(url)) {
                  //   await launch(
                  //     url,
                  //     forceSafariVC: false,
                  //   );
                  // }
                },
                // launch('https://pub.dev/packages/url_launcher'),
              ),
              Divider(),
              ListTile(
                title: Text("Notification"),
                leading: Icon(Icons.add_alert_rounded),
                onTap: () => {},
              ),
              Divider(),
              ListTile(
                title: Text("My account"),
                leading: Icon(Icons.person),
                onTap: () => {},
              ),
              Divider(),
              ListTile(
                title: Text("My Cart"),
                leading: Icon(Icons.card_travel),
                onTap: () => {},
              ),
              Divider(),
              ListTile(
                title: Text("Contact Us"),
                leading: Icon(Icons.phone),
                onTap: () => {},
              ),
              Divider(),
              ListTile(
                title: Text("Close"),
                leading: Icon(Icons.close),
                onTap: () => Navigator.of(context).pop(),
              ),
            ],
          )),

      body: Body(),
      // child: ListView(
      //   padding: EdgeInsets.all(0.0),
      //   children: <Widget>[
      //     UserAccountsDrawerHeader(
      //       decoration:
      //           BoxDecoration(color: Color.fromRGBO(152, 117, 85, 155)),
      //       accountName: Text(" ", style: TextStyle(fontSize: 1)),
      //       accountEmail: Text(" ", style: TextStyle(fontSize: 1)),
      //       currentAccountPicture: CircleAvatar(
      //         backgroundColor: Colors.transparent,
      //         child: Image.asset(
      //           'images/logo.png',
      //           height: 100,
      //           width: 200,
      //         ),
      //       ),
      //     ),

      // ListTile(
      //   title: Text("Home"),
      //   leading: Icon(Icons.new_releases),
      // ),
      // Divider(),
      // Divider(),
      // ListTile(
      //   title: Text("Revies"),
      //   leading: Icon(Icons.message),
      //   onTap: () => {},
      // ),
      // Divider(),
      // Divider(),
      // ListTile(
      //   title: Text("Notification"),
      //   leading: Icon(Icons.add_alert_rounded),
      //   onTap: () => {},
      // ),
      // Divider(),
      // Divider(),
      // ListTile(
      //   title: Text("My account"),
      //   leading: Icon(Icons.person),
      //   onTap: () => {},
      // ),
      // Divider(),
      // Divider(),
      // ListTile(
      //   title: Text("Contact Us"),
      //   leading: Icon(Icons.phone),
      //   onTap: () => {},
      // ),
      // Divider(),
      // Divider(),
      // ListTile(
      //   title: Text("Close"),
      //   leading: Icon(Icons.close),
      //   onTap: () => Navigator.of(context).pop(),
      // ),
      // AppBar(
      //   backgroundColor: Color.fromARGB(255, 48, 8, 8),
      //   elevation: 0,
      //   leading: IconButton(
      //     onPressed: () {},
      //     icon: Image.asset("images/menu-.png"),
      //   ),

      // ),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  _launchURL() async {
    const url =
        'https://stackoverflow.com/questions/51348165/add-on-tap-function-flutter';
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}

// class MyDrawer extends StatelessWidget {
//   final Function onTap;

//   MyDrawer({this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: MediaQuery
//           .of(context)
//           .size
//           .width * 0.8,
//       child: Drawer(
//         child: Container(
//           color: Colors.blueGrey,
//           child: ListView(
//             padding: EdgeInsets.all(0),
//             children: <Widget>[
//               UserAccountsDrawerHeader(
//                 accountEmail: Text("developerszn@gmail.com"),
//                 accountName: Text("ZN-Developers-SAHQ"),
//                 currentAccountPicture: CircleAvatar(
//                   // child: Text("DP"),
//                   child: Image(
//                       image: NetworkImage(
//                           'https://media-exp1.licdn.com/dms/image/C510BAQFllNDEzJ0Bpg/company-logo_100_100/0?e=1605139200&v=beta&t=6q99Yq0kJVHvRQRARAmBB40RY-ndxUaAI8c-bcx6uno')),
//                 ),
//               ),
//               ListTile(
//                 leading: Icon(Icons.home),
//                 title: Text("Random Title 1"),
//                 onTap: () => onTap(context, 0),
//               ),
//               ListTile(
//                 leading: Icon(Icons.pages),
//                 title: Text("Random Title 2"),
//                 onTap: () => onTap(context, 1),
//               ),
//               ListTile(
//                 leading: Icon(Icons.info),
//                 title: Text("About"),
//                 onTap: () => onTap(context, 2),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class HeaderWithSearchBox extends StatelessWidget {
//   // const HeaderWithSearchBox({super.key});
//   // final Size size;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
//       // It will cover 20% of our total height
//       // height: size.height * 0.2,
//       child: Stack(
//         children: <Widget>[
//           Container(
//             padding: EdgeInsets.only(
//               left: kDefaultPadding,
//               right: kDefaultPadding,
//               bottom: 36 + kDefaultPadding,
//             ),
//             // height: size.height * 0.2 - 27,
//             decoration: BoxDecoration(
//               color: kPrimaryColor,
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(36),
//                 bottomRight: Radius.circular(36),
//               ),
//             ),
//             child: Row(
//               children: <Widget>[
//                 Text(
//                   'Hi Uishopy!',

//                 ),
//                 Spacer(),
//                 Image.asset("images/home-sv.png"),
//               ],
//             ),
//           ),
//           Positioned(
//             bottom: 0,
//             left: 0,
//             right: 0,
//             child: Container(
//               alignment: Alignment.center,
//               margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
//               padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
//               height: 54,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(20),
//                 boxShadow: [
//                   BoxShadow(
//                     offset: Offset(0, 10),
//                     blurRadius: 50,
//                     color: kPrimaryColor.withOpacity(0.23),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 children: <Widget>[
//                   Expanded(
//                     child: TextField(
//                       onChanged: (value) {},
//                       decoration: InputDecoration(
//                         hintText: "Search",
//                         hintStyle: TextStyle(
//                           color: kPrimaryColor.withOpacity(0.5),
//                         ),
//                         enabledBorder: InputBorder.none,
//                         focusedBorder: InputBorder.none,
//                         // surffix isn't working properly  with SVG
//                         // thats why we use row
//                         // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
//                       ),
//                     ),
//                   ),
//                   Image.asset("images/home-sv.png"),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Color.fromARGB(255, 255, 255, 255),
    elevation: 0,
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: Image.asset('images/menu-.png'),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    ),
  );
}

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding * 0.2,
      ),
      height: 50,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 48, 8, 8),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 5),
            blurRadius: 100,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Image.asset("images/home-.png"),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset("images/discover-sv.png"),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => discover()));
            },
          ),
          IconButton(
            icon: Image.asset("images/cart-.png"),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => cart()));
            },
          ),
        ],
      ),
    );
  }
}
