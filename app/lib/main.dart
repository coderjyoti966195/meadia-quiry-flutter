import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(title: 'home',


      ),
    );
  }
}
 class HomePage extends StatefulWidget {
   const HomePage({super.key,required this.title});
 final String title;
   @override
   State<HomePage> createState() => _HomePageState();
 }

 class _HomePageState extends State<HomePage> {
  get screenHeight => null;




   @override
   Widget build(BuildContext context) {
     var screenWidth =MediaQuery.of(context).size.width;
     var screenHeight =MediaQuery.of(context).size.width;
     return Scaffold(
       body: screenWidth>=467 ? tabletHomePage(screenWidth,screenHeight): phoneHomePage(screenWidth,screenHeight)
     );
   }
 Widget tabletHomePage(double screenWidth,double screenHeight, ){
     return Center(

       child: Container(
         width: 200,
         height: 200,
         child: ListView(
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 SizedBox(height: 20,),
                 Container(
                  width: 55,
                   height: 50,
                   color: Colors.black26,
                 ),
                 SizedBox(height: 20,),
                 Container(
                   width: 55,
                   height: 50,
                   color: Colors.teal,
                 ),

               ],
             ),
             SizedBox(height: 20,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 SizedBox(height: 20,),
                 Container(
                   width: 50,
                   height: 50,
                   color: Colors.brown,
                 ),
                 SizedBox(height: 20,),
                 Container(
                   width: 50,
                   height: 50,
                   color: Colors.orange,
                 )

               ],

             ),
             SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 20,),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.pink,
                ),
                SizedBox(height: 20,),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.orangeAccent,
                )

              ],
            ),
           ],
         ),
       ),
     );
 }
 Widget phoneHomePage(double screenWidth,double screenHeight,){

     return  ListView(
       children: [
         Column(
           children: [
             SizedBox(height: 40,),
             Container(
               width: 50,
               height: 50,
               color: Colors.yellowAccent,
             ),
             SizedBox(height: 20,),
             Container(
               width: 50,
               height: 50,
               color: Colors.purple,
             ),
             SizedBox(height: 20,),
             Container(
               width: 50,
               height: 50,
               color: Colors.yellow,
             ),
             SizedBox(height: 20,),
             Container(
               width: 50,
               height: 50,
               color: Colors.black,
             ),
             SizedBox(height: 20,),
             Container(
               width: 50,
               height: 50,
               color: Colors.orangeAccent,
             ),
             SizedBox(height: 20,),
             Container(
               width: 50,
               height: 50,
               color: Colors.lightBlue,
             ),
           ],
         ),

       ],
     );
 }
}


