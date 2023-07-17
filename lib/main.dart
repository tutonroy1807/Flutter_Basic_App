import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange),
      home: HomePage(),
      darkTheme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
    ); // we are work in material app
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Driver Haiyer-->"),
        titleSpacing: 30,
        toolbarHeight: 70,
        //  elevation: 10,
        backgroundColor: Colors.amber,
        // works with action button and add a different type of action in appbar
        actions: [
          IconButton(
              onPressed: () {
                MySnackBar(
                    "Please click me and change your setting to your app",
                    context);
              },
              icon: Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                MySnackBar("Your Important notification is here", context);
              },
              icon: Icon(Icons.add_alert_outlined)),
          IconButton(
              onPressed: () {
                MySnackBar("Add your call", context);
              },
              icon: Icon(Icons.add_call)),
          IconButton(
              onPressed: () {
                MySnackBar("Your message is coming", context);
              },
              icon: Icon((Icons.message))),
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            Image.network("https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1283&q=80",
            height: 300,
            width: 400,
            fit: BoxFit.scaleDown,),

            ElevatedButton(onPressed: (){

            }, child: Icon(Icons.login, color: Colors.tealAccent,)),


            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              color: Colors.amberAccent,

              child: Text("Driver Haiyer", style: TextStyle(color: Colors.black),),
            )

          ],// commit
        ),
      ),










      floatingActionButton: FloatingActionButton(
        elevation: 20,
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
        onPressed: () {
          MySnackBar("please add something", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
          BottomNavigationBarItem(
              icon: Icon(Icons.messenger_outline), label: "MESSAGE"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "PROFILE"),
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackBar("Its a HomeButton", context);
          }
          if (index == 1) {
            MySnackBar("All message comes here", context);
          }
          if (index == 2) {
            MySnackBar("Its Your Profile", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.amberAccent),
                accountName: Text(
                  "Prosenjit Roy",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text(
                  "officialcode106473@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: Image.network("https://png.pngtree.com/png-vector/20190307/ourmid/pngtree-vector-edit-profile-icon-png-image_762931.jpg"),
              ),
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  MySnackBar("Its a homebutton", context);
                }),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              onTap: () {
                MySnackBar("Setting button", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text("Search"),
              onTap: () {
                MySnackBar("Search anything and find them", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text("Login"),
              onTap: () {
                MySnackBar(
                    "Click a login a button and enter your account", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {
                MySnackBar("Its Your Profile", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_page_rounded),
              title: Text("Contract"),
              onTap: () {
                MySnackBar("Contract List", context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
