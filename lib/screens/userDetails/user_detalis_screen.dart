import 'package:api_flutter_app/models/user.dart';
import 'package:flutter/material.dart';

class UserDetalisScreen extends StatefulWidget {
  final User user;
   UserDetalisScreen({required this.user});

  @override
  _UserDetalisScreenState createState() => _UserDetalisScreenState();
}

class _UserDetalisScreenState extends State<UserDetalisScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("user Details"),
      ),
      body: Center(
        child:
   Column(
     children : [
        IconButton(onPressed: () {
       
     },
      icon: Icon(Icons.account_circle),
      color: Colors.blue.shade600,
      hoverColor: Colors.grey,
      ),
       SizedBox(
              height: 20,
            ),
     Text(
       'W E L C O M E',
         style: TextStyle(fontWeight: FontWeight.bold,
         fontSize: 40,
         color: Colors.blue.shade600,),
       ),
        SizedBox(
              height: 20,
            ),
       Image.asset(
              "assets/images/congrats.png",
              width: 250,
              height: 200,
              ),
             
   ],
   

   mainAxisSize: MainAxisSize.max,
   mainAxisAlignment: MainAxisAlignment.center,
   crossAxisAlignment: CrossAxisAlignment.center,
  ),
      ),
    );
  }
}