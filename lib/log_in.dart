import 'package:evening_class/profile_page.dart';
import 'package:flutter/material.dart';
class LogIn extends StatefulWidget {
  LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
 final TextEditingController _emailController = TextEditingController();

 final TextEditingController _passwordController = TextEditingController();
 bool is_show = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.text,
                  // obscureText: true,
                  style: TextStyle(color: Colors.pink,fontSize: 20),
                  decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: Icon(Icons.email_outlined),
                    // icon: Icon(Icons.email),
                    // suffixIcon: Icon(Icons.email),
                    // label: Text("Phone number"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),

                  ),

                ),
                SizedBox(height: 20,),
                TextField(
                  controller: _passwordController,
                  keyboardType: TextInputType.text,
                  obscureText: is_show,
                  style: TextStyle(color: Colors.pink,fontSize: 20),
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.key),
                    // icon: Icon(Icons.email),
                    suffixIcon: InkWell(onTap:(){
                      setState(() {
                        is_show = !is_show;
                      });
                    },child: is_show? Icon(Icons.visibility) : Icon(Icons.visibility_off),),
                    // label: Text("Phone number"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),

                  ),

                ),
                SizedBox(height: 20,),
 CircularProgressIndicator(),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,

                  child: ElevatedButton(

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,),
                      onPressed: (){
                        print(_emailController.text);
                        print(_passwordController.text);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
                      }, child: Text("Loing",style: TextStyle(color: Colors.white) ,)),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
