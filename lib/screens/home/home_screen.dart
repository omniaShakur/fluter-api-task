
import "package:api_flutter_app/models/user.dart";
import 'package:api_flutter_app/screens/userDetails/user_detalis_screen.dart';
import 'package:flutter/material.dart';
import 'package:api_flutter_app/data/users_service.dart';
import 'package:api_flutter_app/components/user_card.dart';



class HomeScreen extends StatefulWidget{
@override
State<StatefulWidget> createState(){
  return _HomeScreenState();
}
}


class _HomeScreenState extends State<HomeScreen> {
  
late Future<List<User>> _usersList;
// ignore: unused_element
_getUsers() async{
  _usersList = UsersService().getUsers();

}
@override
void initState () {
  super.initState();
  _getUsers();
}
 


@override
Widget build(BuildContext context){
  
  return Scaffold(
    backgroundColor: Colors.blueAccent,
    appBar: getAppBar(),
    body: getUserCard()
  );
}

PreferredSizeWidget getAppBar(){
  return AppBar(
    
          title: Text('LOGO',
         style: TextStyle(fontWeight: FontWeight.bold,
         fontSize: 20,
         color: Colors.deepPurple.shade900,),),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color:Colors.deepPurple.shade900,
              ),
              onPressed: (){
                print('Menu button Clicked');
              },
              ),

    );
}
  
Widget getUserCard(){
  return FutureBuilder(future: _usersList, builder: (context, snapshot){
        if(snapshot.hasData){
ListView(
        children: List.generate(snapshot.data.length,
         (index) => UserCard(
           user: snapshot.data[index],
           onItemClick: (clickedUser){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => UserDetalisScreen(
                user: clickedUser,
              ),
              ),
              );
           },),
         ),
      );
        }else if(snapshot.hasError){
          return Center(
            child: Text(snapshot.error.toString()),
          );
        }else{
          return Center(
            child: CircularProgressIndicator(),
          );

        }
  });
}
  
  }
 

