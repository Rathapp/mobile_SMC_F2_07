import 'package:evening_class/models/person_model.dart';
import 'package:evening_class/pages/detail_person.dart';
import 'package:flutter/material.dart';

import '../data/data.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: ListView.builder(
          itemCount: peoples.length,
          itemBuilder:(context,index){
            final person = peoples[index];
            return ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> DetailPerson(Person.fromJson(person))));
              },
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(person["image"]),
            ),
              title: Text(person["name"],style: TextStyle(fontSize: 20),),
              subtitle: Text(person["job"]),
              trailing: Column(
                children: [
                  Text("17:00"),
                  Text("Ratha"),
                ],
              ),


            );

          }



      ),
    );
  }
}
