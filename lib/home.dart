import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List screens=[
    const Center(child: Text("Home"),),
    const Center(child: Text("People"),),
    const Center(child: Text("Search"),),
    const Center(child: Text("Menu"),),

  ];
  int index=0;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: const Text("MY APPLICATION")),
      // body:const Center(child: Image(image: AssetImage("assets/icons/home.png"),height: 200,width: 200,),
      // ),
       bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueAccent,
        selectedItemColor: Colors.grey,
        currentIndex: index,
        onTap: (taped_index){
          setState(() {
           index=taped_index;
          });
        },

        items: const [
       BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
       BottomNavigationBarItem(icon: Icon(Icons.people),label: "People"),
       BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
       BottomNavigationBarItem(icon: Icon(Icons.more),label: "Menu"),


      ]),
      body: Container( 
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          
          ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Lottie.network("https://assets1.lottiefiles.com/packages/lf20_t7Gs4GoQvT.json"),
              
              const Text("MY APPLICATON",style: TextStyle(fontSize: 40,color: Color.fromARGB(255, 1, 33, 59)),),
            ],
          ),
        ),
      ),
     
   );
  }
}