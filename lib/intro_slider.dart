import 'package:flutter/material.dart';
import 'package:flutter_december2/home.dart';
import 'package:introduction_screen/introduction_screen.dart';

class InroductionSlider extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration=const PageDecoration(
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black12,

      ),
      bodyTextStyle: TextStyle(
        color: Colors.yellow,
        
      ),
      imagePadding: EdgeInsets.fromLTRB(16, 5, 16, 16),
    boxDecoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        stops: [1,5,7,9],
        colors: [
        Colors.deepOrange,
        Colors.deepOrangeAccent,
        Colors.redAccent,
        Colors.red,
        
      ])
    )
      

    );
    return IntroductionScreen(
      //globalBackgroundColor: Colors.deepPurple[300],
      pages: [
        PageViewModel(
          decoration: pageDecoration,
          title: "First page",
          body: """Introduction Screen allows you to have a screen 
          on an app's first launch to, for example, explain your app. 
          This widget is very customizable with a great design.""",
          image: IntroImage("https://images.unsplash.com/photo-1564514476902-542f8c30121e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YnV0dGVyZmx5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
          ),
          PageViewModel(
            decoration: pageDecoration,
          title: "First page",
          body: """Introduction Screen allows you to have a 
          screen on an app's first launch to, for
          example, explain your app. This widget is 
          very customizable with a great design.""",
          image: IntroImage("https://images.unsplash.com/photo-1595967444215-4901e8436909?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YnV0dGVyZmx5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
          ),
          PageViewModel(
            decoration: pageDecoration,
          title: "First page",
          body: """Introduction Screen allows you to have a screen 
          on an app's first launch to, for example, explain your app. 
          This widget is very customizable with a great design.""",
          image: IntroImage("https://images.unsplash.com/photo-1526336179256-1347bdb255ee?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YnV0dGVyZmx5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
          ),
              ],
              onDone:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home())),
              onSkip: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home())),
              showSkipButton: true,
              skip: const Text("Skip"),
              next: const Icon(Icons.arrow_forward),
              done: const Text("Continue to Home"),
              dotsDecorator: const DotsDecorator(
                size: Size(10, 10),
                color: Colors.white,
                activeSize: Size(22, 10),
                activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25)))
              ),
    );
  }
   IntroImage(String image) {
  return  Align(
    alignment: Alignment.bottomCenter,
    child: Image.network("$image",width: 350,),
  );

}
}

