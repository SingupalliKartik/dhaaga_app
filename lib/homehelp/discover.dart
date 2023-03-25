import 'package:dhaagafinal/cart.dart';
import 'package:dhaagafinal/login.dart';
import 'package:flutter/material.dart';


import '../home.dart';
import 'constants.dart';
import 'dis2.dart';


class discover extends StatelessWidget {
  const discover({super.key});

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
                            
                          image: DecorationImage(image: AssetImage('images/logo1.png'),
                          ),
                        ),
                      ),
                    ),

                  ],
                )
              )
            ),
        
            SizedBox (height:10,
            ),
              ListTile(
              title: Text("Home"),
              leading: Icon(Icons.new_releases),
            ),

            Divider(),
            ListTile(
              title: Text("Revies"),
              leading: Icon(Icons.message),
              onTap: () => {},
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
              title: Text("Contact Us"),
              leading: Icon(Icons.phone),
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
              title: Text("Close"),
              leading: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        )
        
    
        ),
        body: dis2(),

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
AppBar buildAppBar() {
    return AppBar(
      title: const Text('Discover',
      style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 25,
          ),),
      backgroundColor:  Color.fromARGB(255, 48, 8, 8),
      elevation: 0,
      leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: Image.asset('images/menu-al.png'),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    ),
   
   
   
    );
    
  }


}



class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding*0.2,
      ),
      height: 50,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 60, 26, 2),
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
            icon: Image.asset("images/home-sv.png"),
            onPressed: () {Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => MyHomePage()));},
          ),
          IconButton(
            icon: Image.asset("images/discover-.png"),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset("images/cart-.png"),
            onPressed: () {Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => cart()));},
          ),
        ],
      ),
    );
  }
}