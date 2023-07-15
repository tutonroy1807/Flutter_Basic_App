

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

  MySnackBar(message, context){
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
          IconButton(onPressed: (){
            MySnackBar("Please click me and change your setting to your app", context);
          }, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){
            MySnackBar("Your Important notification is here", context);
          }, icon: Icon(Icons.add_alert_outlined)),
          IconButton(onPressed: (){
            MySnackBar("Add your call", context);
          }, icon: Icon(Icons.add_call)),
          IconButton(onPressed: (){
            MySnackBar("Your message is coming", context);
          }, icon: Icon((Icons.message))),
        ],
          ),
      //body: Text("MY APP"),
      floatingActionButton: FloatingActionButton(
        elevation: 20,
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
        onPressed:(){
          MySnackBar("please add something", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex : 2,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
          BottomNavigationBarItem(icon: Icon(Icons.messenger_outline), label: "MESSAGE"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "PROFILE"),
        ],

        onTap: (int index){
          if(index==0){
            MySnackBar("Its a HomeButton", context);
         }
          if(index == 1){
            MySnackBar("All message comes here", context);
        }
          if(index == 2)
            {
              MySnackBar("Its Your Profile", context);
            }
      },


      ),
    );
  }
}
