
import 'package:flutter/material.dart';

import 'edite_profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
 final imagUrl = "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,size: 19,)),
        centerTitle: true,
        // backgroundColor: Colors.transparent,
        elevation: 0,
        primary: true,
        actions: [
          IconButton(icon: Icon(Icons.settings_outlined,size: 23,),
            onPressed: (){},),
          SizedBox(width: 20)],),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Row(
              children: [
                Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(imagUrl),
                    // AssetImage("assets/images/dd.jpg"),
                    backgroundColor: Colors.grey,
                ),
                Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1,color: Colors.black12),
                          color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    child: Icon(Icons.camera_enhance_outlined,size: 15,color: Colors.black,),
                    )
                )
                ]
              ),
                SizedBox(width: 40,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Pov Ratha',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,)),
                    Text("ratha@gmail.com"),
                    SizedBox(height: 10,),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>EditeProfile()));
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        backgroundColor: Colors.green,// 👈 fully rounded
                      ),
                      child: Text("Edit Profile",style: TextStyle(color: Colors.white),),
                      // icon: Icon(Icons.edit),

                    )
                    // )

                  ],
                )
              ],

            ),
              SizedBox(height: 30,),
              menuList(Icons.favorite_border_outlined,"Favourites",isLast: true),
              menuList(Icons.download_outlined,"Downloads",isLast: true),
              Divider(),
              menuList(Icons.language,"Language",isLast: true),
              menuList(Icons.location_on_outlined ,"Location",isLast: true),
              menuList(Icons.privacy_tip_outlined,"Privacy",isLast: true),
              menuList(Icons.display_settings_outlined,"Display",isLast: true),
              menuList(Icons.room_preferences_outlined,"Feed preference",isLast: true),
              menuList(Icons.unsubscribe_outlined,"Subscription",isLast: true),
              Divider(),
              menuList(Icons.delete_outline_outlined,"Clear cache",isLast: true),
              menuList(Icons.history_edu_outlined ,"Clear history",isLast: true),
              menuList(Icons.logout_outlined,"Log Out",c:Colors.red),
              SizedBox(height: 100,),
              Center(child: Text("App version 003"),),
              SizedBox(height: 20,),
            ],
          ),

        ),
      ),
    );
  }
}

Widget menuList(IconData icon,String title,{Color c = Colors.black54,bool isLast = false}){
  return  ListTile(
    onTap: (){},
    // dense: true,
    // visualDensity: VisualDensity.compact,
    contentPadding: EdgeInsets.zero,
    leading: Icon(icon,color: c ),
    title: Text(title,style: TextStyle(fontWeight: FontWeight.w500,color: c,fontSize: 18,letterSpacing: -0.1)),
    trailing: isLast ? (Icon(Icons.arrow_forward_ios,size: 15)): null,
  );
}