import 'package:flutter/material.dart';
import 'package:flutter_december2/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Login_page extends StatefulWidget {
  const Login_page({super.key});
//Shared prefernces
  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  // create a text controller and use it to retrieve the current value of the TextField
  final usename_controller=TextEditingController();
  final password_controller=TextEditingController();
  late SharedPreferences logindata;
  late bool newuser;

  @override
  void initState(){
    check_if_already_login();
  }
  void check_if_already_login() async{
      logindata=await SharedPreferences.getInstance();
      newuser=(logindata.getBool('newuser')?? true);
      print(newuser);
      if(newuser==false){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home()));
      }
  }
  void dispose(){
    usename_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("Shared prefernces"),),
      body: Form(
        child: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const Text("Login Form" ,style:TextStyle(
                fontSize: 40,
                fontFamily: "Schibsted_Grotesk",
                fontWeight: FontWeight.bold)
                ),
                const Text("To show  Example of Shared Preference" ,style:TextStyle(
                fontFamily: "Schibsted_Grotesk",
                fontWeight: FontWeight.bold)
                ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: usename_controller,
                  decoration: const InputDecoration(
                    fillColor: Colors.blueAccent,
                    filled: true,
                    labelText: "Username",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: password_controller,
                  decoration: const InputDecoration(
                    fillColor: Colors.blueAccent,
                    filled: true,
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              ElevatedButton(onPressed: (){
                String username=usename_controller.text;
                String Password=password_controller.text;
                if (username !="" && Password!=""){
                  print("Successful");
                  logindata.setBool("newuser", false);
                  logindata.setString("username", username);
                  logindata.setString("password", Password);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                }
              }, child: const Text("Log-In"))
          ]) ,
        ),
      ),
    );
  }
  
  
}