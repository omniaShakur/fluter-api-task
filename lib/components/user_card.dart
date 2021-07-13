import 'package:api_flutter_app/models/user.dart';
import 'package:flutter/material.dart';


class UserCard extends StatelessWidget{
  final User user;
  final Function onItemClick;
  UserCard({required this.user, required this.onItemClick});
  @override 
  Widget build(BuildContext context) {
    return InkWell(
          onTap: (){
            onItemClick(user);
          },
          child: Container(
        height: 200,
        decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.deepPurple.shade900,
      boxShadow: [
      BoxShadow(color: Colors.white,
       spreadRadius: 50),
      ],
  ),
        alignment: Alignment.center,
        margin: EdgeInsets.all(12.0),
        child: Container(
          color: Colors.deepPurple.shade900,
          child:Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 20,
            ),
            Image.asset(
              "${user.image}",
              width: 100,
              height: 100,
              ),
            SizedBox(
              width: 60,
            ),
            Text("${user.id}",
            style: TextStyle(fontWeight: FontWeight.bold,
           fontSize: 20,
           color: Colors.deepPurple.shade50,)),
            SizedBox(
              width: 60,
            ),
            Text("${user.name}",
            style: TextStyle(fontWeight: FontWeight.bold,
           fontSize: 20,
           color: Colors.deepPurple.shade50,)),
            SizedBox(
              width: 60,
            ),
            Text("${user.email}",
            style: TextStyle(fontWeight: FontWeight.bold,
           fontSize: 20,
           color: Colors.deepPurple.shade50,)),
          ],
        ),
        ),
      ),
     );
  }
}