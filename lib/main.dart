import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {},
              icon: Icon(Icons.arrow_back, color: Colors.grey,)
          ),
          title: new FlutterLogo(),
          centerTitle: true,
          foregroundColor: Colors.green,
          elevation: 0.0,
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.menu, color: Colors.grey,))
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
          Stack(children: [
            Container(
              height: 100,
              //alignment: Alignment.center,
              alignment: Alignment(0.0, -0.40),
              color: Colors.white,
              child: Text('Get Coaching', style: GoogleFonts.montserrat(fontSize: 30.0,
                  color: Colors.black.withOpacity(0.65), fontWeight: FontWeight.bold),),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 1.0)]
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                      child: Text('YOU HAVE', style: GoogleFonts.quicksand(fontSize: 14.0,
                          fontWeight: FontWeight.bold, color: Colors.grey),),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(25.0,50.0, 5.0, 10.0),
                      child: Text('206', style: GoogleFonts.quicksand(fontSize: 40.0,
                          fontWeight: FontWeight.bold, color: Colors.black),),
                    ),
                  ],),
                  SizedBox(width: 100,),
                  Container(
                    height: 50,
                    width: 125.0,
                    color: Colors.green[100]?.withOpacity(0.5),
                    child: Center(
                      child: Text('Buy More', style: GoogleFonts.quicksand(fontWeight: FontWeight.bold,
                      color: Colors.green),),
                    ),
                  ),
                ],
              ),
            ),
          ],),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('MY COACHES', style: GoogleFonts.quicksand(fontWeight: FontWeight.bold,
                  fontSize: 12.0, color: Colors.grey),),

                  Text('VIEW PAST SESSIONS', style: GoogleFonts.quicksand(fontWeight: FontWeight.bold,
                      fontSize: 12.0, color: Colors.green),)
              ],)
              ,),
            SizedBox(height: 20,),
            GridView.count(
              primary: false,
              crossAxisSpacing: 2.0,
                shrinkWrap: true,
                crossAxisCount: 2,
              mainAxisSpacing: 4.0,
              children: [
                buildCard("Tom", "Available", 1),
                buildCard("Cruise", "Away", 2),
                buildCard("Dennis", "Away", 3),
                buildCard("Mary", "Available", 4),
                buildCard("Name", "Away", 5),
                buildCard("Java", "Available", 6),
              ],
            ),
        ],),
      ),
    );
  }
  Widget buildCard(String name, String status, int cardInex){
    return Card(
     // margin: EdgeInsets.only(left: 18.0, right: 18.0,top: 10.0, bottom:3),
      margin: cardInex.isEven? EdgeInsets.fromLTRB(10.0, 0.0,30.0, 10.0):
      EdgeInsets.fromLTRB(30.0, 0.0,5.0, 10.0),
      elevation: 7.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
      ),
      color: Colors.white,
      child: Column(
        children: [
        SizedBox(height: 12,),
          Stack(
            children: [
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                  image: DecorationImage(image: NetworkImage('https://images.mubicdn.net/images/cast_member/2184/cache-2992-1547409411/image-w856.jpg?size=800x'),
                      fit: BoxFit.cover
                  ),
                ),
              ),
              Positioned(
                right: 6,
                  child: Container(
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0)
                    ),
                    child: Container(
                      margin: EdgeInsets.all(2),
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: status == 'Away'? Colors.orange: Colors.green,
                        borderRadius: BorderRadius.circular(30.0),
                      ) ,
                    ),
                  ),
              ),
            ],
          ),
          SizedBox(height: 8.0,),
          Container(
            child: Text(name, style: GoogleFonts.quicksand(fontSize: 15.0, fontWeight:
            FontWeight.bold, color: Colors.grey),
            ),
          ),
          SizedBox(height: 5.0,),
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 0.0, .0, 20.0),
            child: Text(status, style: GoogleFonts.quicksand(fontSize: 15.0, fontWeight:
            FontWeight.bold, color: Colors.grey),
            ),
          ),
          SizedBox(height: 15.0,),
          Expanded(child: Container(
            width: 175.0,
            decoration: BoxDecoration(
              color: status == 'Away'? Colors.grey: Colors.green,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10)
              ),
            ),
            child: Center(child: Text('Request')),
          )
          )
        ],
      ),
    );
  }
}

