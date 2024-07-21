import 'package:flutter/material.dart';
import 'package:json_parsing/8.2/provider/user_provider.dart';
import 'package:provider/provider.dart';

class UserDataPage extends StatelessWidget {
  const UserDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    UserProvider userProvider = Provider.of<UserProvider>(context);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Text('User Json Data', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          ),
          body: SingleChildScrollView(
            child: Column(

                children: [
                   ...List.generate(userProvider.userList.length, (index) =>
                       Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: Container(
                           height: 350,
                           width: double.infinity,
                           decoration: BoxDecoration(
                             color: Colors.black26,
                             borderRadius: BorderRadius.circular(20),
                           ),
                           alignment: Alignment.topCenter,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                               ElevatedButton(onPressed: () {}, child: Text(
                                 'User ID: - ${userProvider.userList[index].id}',style: TextStyle(
                                 color: Colors.black,
                                 fontWeight: FontWeight.bold,
                                 fontSize: 15
                               ),
                               )),
                               Text(
                                 'Name :-  ${userProvider.userList[index].name}',style: TextStyle(
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold,
                                   fontSize: 15
                               ),
                               ),
                               Text(
                                 'Username :-  ${userProvider.userList[index].username}',style: TextStyle(
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold,
                                   fontSize: 15
                               ),
                               ),
                               Text(
                                 'Email :-  ${userProvider.userList[index].email}',style: TextStyle(
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold,
                                   fontSize: 15
                               ),
                               ),
                               Text(
                                 'Address :-  ${userProvider.userList[index].address.street},${userProvider.userList[index].address.suite},${userProvider.userList[index].address.city},\n${userProvider.userList[index].address.zipcode},${userProvider.userList[index].address.geo.lat},${userProvider.userList[index].address.geo.lng}',textAlign: TextAlign.center,style: TextStyle(
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold,
                                   fontSize: 15
                               ),
                               ),
                               Text(
                                 'Phone :-  ${userProvider.userList[index].phone}',style: TextStyle(
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold,
                                   fontSize: 15
                               ),
                               ),
                               Text(
                                 'Website :-  ${userProvider.userList[index].website}',style: TextStyle(
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold,
                                   fontSize: 15
                               ),
                               ),
                               ElevatedButton(onPressed: () {

                               }, child:  Text(
                                 'Comany :-  ${userProvider.userList[index].company.name}',style: TextStyle(
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold,
                                   fontSize: 15
                               ),
                               ),),
                               Text(
                                 'CatchPhrase :-  ${userProvider.userList[index].company.catchPhrase}',style: TextStyle(
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold,
                                   fontSize: 15
                               ),
                               ),
                               Text(
                                 'BS :-  ${userProvider.userList[index].company.bs}',style: TextStyle(
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold,
                                   fontSize: 15
                               ),
                               ),
                             ],
                           ),
                         ),
                       )
                   )

                ]
      
            ),
          )
      
      ),
    );
  }
}
