
import 'package:evening_class/Screen/card_screen.dart';
import 'package:evening_class/Screen/favorite_screen.dart';
import 'package:evening_class/Screen/home_screen.dart';
import 'package:evening_class/Screen/profile_screen.dart';
import 'package:flutter/material.dart';

class SimplePage extends StatefulWidget {
  SimplePage({super.key});

  @override
  State<SimplePage> createState() => _SimplePageState();
}

class _SimplePageState extends State<SimplePage> {
 final GlobalKey<ScaffoldState> _keyScaffold = GlobalKey<ScaffoldState>();
final List<Widget> _screens = [HomeScreen(),FavoriteScreen(),CardScreen(),ProfileScreen()];
late int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      key: _keyScaffold,
      appBar: buildAppBar(),
      drawer: buildDrawer(),
      endDrawer: Drawer(),
      body: _screens[_currentIndex],
      // buildSafeArea(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)) ,
        onPressed: (){},child: Icon(Icons.plumbing_rounded),),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: (index){
        setState(() {
          _currentIndex = index;
        });
      },
      currentIndex: _currentIndex,
      backgroundColor: Colors.blue,

      selectedItemColor: Colors.red,
      iconSize: 28,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
        items: [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.favorite_outline),label: "Favorite"),
      BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart),label: "Card"),
      BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: "Profile")
    ]);
  }

  BottomAppBar buildBottomAppBar() {
    return BottomAppBar(
      color: Colors.blue,
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.home)),
        IconButton(onPressed: (){}, icon: Icon(Icons.home)),
        SizedBox(width: 30,),
        IconButton(onPressed: (){}, icon: Icon(Icons.home)),
        IconButton(onPressed: (){}, icon: Icon(Icons.home))
      ]
        ,),);
  }

  Drawer buildDrawer() => Drawer(
    backgroundColor: Colors.indigo,
    child: SafeArea(child: Column(
      children: [
        DrawerHeader(child: Row(

          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Colors.red,
                image: DecorationImage(image: AssetImage("assets/images/dd.jpg"),fit: BoxFit.cover),
                border: BoxBorder.all(color:Colors.white,width: 2)
              ),
            ),
            SizedBox(width: 20,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("Hello, Ratha",style: TextStyle(fontSize: 18,color: Colors.blueGrey,fontWeight: FontWeight(600)),),
              Text("View Profile"),

            ],)

          ],
        )),
        ListTile(leading: Icon(Icons.home,color: Colors.white,),
          title: Text("Home"),
          trailing: Icon(Icons.favorite),
        ),
        ListTile(leading: Icon(Icons.home,color: Colors.white,),
          title: Text("Home"),
          trailing: Icon(Icons.favorite),
        ),
        ListTile(leading: Icon(Icons.home,color: Colors.white,),
          title: Text("Home"),
          trailing: Icon(Icons.favorite),
        ),
        Divider()
      ],
    )),
  );

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(onPressed: (){
        _keyScaffold.currentState?.openDrawer();
      }, icon: Icon(Icons.grid_view_outlined)),
      title: Text("Profile",style: TextStyle(color: Colors.indigo,fontSize: 28,fontWeight: FontWeight(600)),),
    actions: [
      IconButton(onPressed: (){}, icon: Icon(Icons.notifications_outlined,size: 30,)),
      // IconButton(onPressed: (){
      //   _keyScaffold.currentState?.openEndDrawer();
      // }, icon: Icon(Icons.settings)),

    ],
    centerTitle: true,
    backgroundColor: Colors.blue,);
  }

  Widget buildSafeArea() {
    return SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,

          children: [
            Container(),
            Text("data"),
           Spacer(),
            Icon(Icons.favorite)
          ],
        ));
  }
}
