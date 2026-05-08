import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Learning extends StatelessWidget {
  const Learning({super.key});
  final imgUrl = "https://img.freepik.com/premium-photo/beautiful-view-banff-national-park_926199-1968126.jpg?w=360";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,

                children: [
                  Icon(
                    Icons.eighteen_mp_rounded, size: 45, color: Colors.amber,),
                  Text("Hello", style: TextStyle(fontSize: 45),)
                ],),
              Image.asset("assets/images/dd.jpg", height: 200,
                width: 200,
                fit: BoxFit.contain,),
              Text("Hello flutter", style: TextStyle(color: Colors.red,
                  fontSize: 45,
                  fontWeight: FontWeight.bold),),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.grey,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                    children: [
                      Icon(CupertinoIcons.plus_app_fill, size: 34,
                        color: Colors.amber,),
                      Text("Hello", style: TextStyle(fontSize: 23),)
// Text("dsfdgdfg",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 23),)
                    ]
                ),

              ),
              Expanded(child: Container(color: Colors.grey,))
            ],
          )

      ),
    );
  }
}
