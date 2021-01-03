import 'package:cetquiz_app/Screens/QuizPage.dart';
import 'package:cetquiz_app/Screens/QuizPage_1.dart';
import 'package:flutter/material.dart';

void gotoQuizPage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => QuizPage()),
  );
}
void gotoQuizPage_1(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => QuizPage_1()),
  );
}

class HomePage extends StatelessWidget {
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
          Padding(
            padding: const EdgeInsets.only(bottom: 60.0),
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/home.jpg'),
                    fit: BoxFit.fill
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Center(
              child: Text(
                'Başarılar Dilerim..',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'DancingScript',
                  fontWeight: FontWeight.bold,
                ),
              ),

            ),
            color: Color.fromRGBO(237, 237, 237,1.0),
          ),
          SizedBox(
            height: 60,
          ),
          RaisedButton(
            color: Colors.lightGreen,
            onPressed: () {
              gotoQuizPage(context);
            },
            child: Text('KOLAY',style: TextStyle(color:Colors.white,fontFamily: 'Texturina', fontSize: 25,),),
          ),
          RaisedButton(
            color: Colors.lightGreen,
            onPressed: () {
              gotoQuizPage_1(context);
            },
            child: Text('ZOR', style: TextStyle(color: Colors.white,fontFamily: 'Texturina', fontSize: 25,),
            ),),
        ],

      ),
      // backgroundColor: Color.fromRGBO(237, 237, 237,1.0),
    );
  }
}