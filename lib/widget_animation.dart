import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:text_marquee/text_marquee.dart';

class Animatedui extends StatefulWidget {
  const Animatedui({super.key});

  @override
  State<Animatedui> createState() => _AnimateduiState();
}

class _AnimateduiState extends State<Animatedui> {

  bool isClicked=true;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black.withOpacity(.9),
          title: Center(
            child: Text(
              "Animation Widgets",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: FadeInImage(
                      fadeInDuration: Duration(milliseconds: 1000),
                      fadeOutDuration: Duration(milliseconds: 300),
                      width: size.width * .98,
                      height: size.height * .45,
                      fit: BoxFit.cover,
                      placeholder: NetworkImage(
                          "https://img.freepik.com/premium-photo/cartoon-character-blue-aquamarine-seahorse-3d-illustration-children-generative-ai_89917-1061.jpg?ga=GA1.1.1380760527.1707572379"),
                      image: NetworkImage(
                          "https://img.freepik.com/premium-photo/colourful-dragon-chinese-head-blue-pink-studio-background-generative-ai_89917-1096.jpg?ga=GA1.1.1380760527.1707572379")),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: AnimatedContainer(duration: Duration(milliseconds: 1000),decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: isClicked? Colors.blueAccent:Colors.deepOrange,
                      ),
                      height: 100),
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: AnimatedContainer(duration: Duration(milliseconds: 1000),decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: isClicked? Colors.red:Colors.yellow,
                      ),
                          height: 100),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: AnimatedContainer(duration: Duration(milliseconds: 1000),decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: isClicked? Colors.pinkAccent:Colors.blueAccent,
                      ),
                          height: 100),
                    ),
                  ),
                ],
              ),


              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 32),
                    child: AnimatedOpacity(opacity: isClicked?1:.5, duration: Duration(milliseconds: 1000),child: Text(
                      isClicked?"Bye ":"Hello",style: TextStyle(
                      fontSize: 25,fontWeight: FontWeight.bold
                    ),
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: AnimatedRotation(turns:isClicked?0:1, duration: Duration(milliseconds: 1000),child: Text(
                      isClicked?"Deadpool":"Wolverine",style: TextStyle(
                      fontSize: 25,fontWeight: FontWeight.bold
                    ),
                    ),),
                  ),
                  
                  AnimatedScale(scale:isClicked?1:.3, duration:Duration(milliseconds: 1000),child:
                  Text(
                    isClicked?"Deadpool":"Wolverine",style: TextStyle(
                      fontSize: 25,fontWeight: FontWeight.bold
                  ),
                  )
                    ,)
                ],
              ),

              SizedBox(height: 25,),

              TextMarquee("I've learned that people will forget what you said, people will forget what you did, but people will never forget how you made them feel -Maya Angelou",style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold,
              ),),

              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(width: double.infinity, child: ElevatedButton(style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.redAccent)
                ),onPressed: (){
                  setState(() {
                    isClicked=!isClicked;
                  });
                }, child: Text("Click Here",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),))),
              ),
              
              Lottie.asset("assets/Animation - 1723094946485.json"),
              Lottie.asset("assets/Animation - 1723095895038.json")
            ],
          ),
        ),
      ),
    );
  }
}
