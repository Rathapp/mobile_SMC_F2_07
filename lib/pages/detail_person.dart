import 'package:flutter/material.dart';

import '../models/person_model.dart';
class DetailPerson extends StatelessWidget {
  const DetailPerson(this.person, {super.key});
  final Person person;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.chevron_left,size: 30,)),
        title: Text("Detail Person"),
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(person.image),
            ),
            Text(person.name),
            Text(person.email),
            Text(person.job),
            Text(person.phone),
            Text(person.city),

          ],
        ),
      ),
    );
  }
}
