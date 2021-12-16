

import 'package:flutter/material.dart';
import 'package:yasamsuresi/constants.dart';
import 'package:yasamsuresi/hesap.dart';
import 'package:yasamsuresi/user_data.dart';

class ResultPage extends StatelessWidget {

  final UserData _userData;
    ResultPage(this._userData);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,

      appBar:AppBar(
        title: Text('RESULT PAGE',
          style: TextStyle(color: Colors.white,fontSize: 20,
              fontWeight:FontWeight.bold),
        ),
        centerTitle: true,


        backgroundColor: Colors.redAccent[200],

      ),


        body: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,

          children:<Widget> [

            Container(
              child: Image(image: AssetImage('assets/angel.png',),
                height: 150,
              ),
              margin: EdgeInsets.only(top: 100),
            ),


            Expanded(
              flex: 8,
              child: Center(
                child: Text(
                  Hesap(_userData).hesaplama().round().toString(),
                 style: TextStyle(color: Colors.white,fontSize: 50,
                    fontWeight:FontWeight.bold),
                ),
              ),
            ),

            Expanded(
              flex: 1,
              child: FlatButton(
                color: Colors.white,
                onPressed: (){
                  Navigator.pop(context);
                },


                child:Text(
                  'Back',
                  style: TextStyle(color: Colors.black,fontSize: 20,
                    fontWeight:FontWeight.bold),
                ),
            ),
            ),
          ],
        )

    );
  }
}
