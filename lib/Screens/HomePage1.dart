import 'package:flutter/material.dart';
import 'package:cetquiz_app/Screens/HomePage.dart';

void gotoHomePage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => HomePage()),
  );
}
class HomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,

        title: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.all(8.0),
                child: Text('Cet Quiz',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Texturina',
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ),],),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Center(
              child: Text(
                ' Hoşgeldin, çözmek istediğin soru sayısını gir.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'NerkoOne',
                  fontWeight: FontWeight.bold,
                ),
              ),

            ),

            //color: Color.fromRGBO(237, 237, 237,1.0),
          ),
          SizedBox(
            height: 60,
          ),

       Padding(
         padding: EdgeInsets.all(15),
            child:
              TextField(
                
                  maxLength: 2, style: TextStyle(color:Colors.black87,fontFamily: 'a',),decoration: InputDecoration(border: OutlineInputBorder(),),
                  keyboardType: TextInputType.number),
       ),

         // RaisedButton(
            //color: Color.fromRGBO(237, 237, 237,1.0),

           /* child: TextField(
              maxLength: 2,obscureText: true, style: TextStyle(color:Colors.white,fontFamily: 'a',color: Color.fromRGBO(237, 237, 237,1.0),),
            keyboardType: TextInputType.number),
         // ), */
          RaisedButton(
            color: Colors.lightGreen,
            onPressed: () {
              gotoHomePage(context);
            },
            child: Text('Devam', style: TextStyle(color:Colors.white,fontFamily: 'a',),
            ),),
        ],

      ),
      // backgroundColor: Color.fromRGBO(237, 237, 237,1.0),
    );
  }
}