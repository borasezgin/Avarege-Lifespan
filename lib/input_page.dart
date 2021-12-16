import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yasamsuresi/constants.dart';
import 'package:yasamsuresi/result_page.dart';
import 'package:yasamsuresi/user_data.dart';
import 'icon_cinsiyet.dart';
import 'my_container.dart';



class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}



class _InputPageState extends State<InputPage> {

  String selectedGender ='Default';
  double cigaratte = 0.0;
  double exercise = 0.0;
  int height =170;
  int weight = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[200],
        title: Text(
          'Average Lifespan',
          style: TextStyle(color: Colors.white,fontSize: 30,
              fontWeight:FontWeight.bold),
        ),
        centerTitle: true,
      ),

      body:Column(
        children:<Widget> [
          Expanded(
            child:Row(
              children:<Widget> [
               Expanded(
                 child: MyContainer(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,

                     children: <Widget>[
                       RotatedBox(
                           quarterTurns: -1,
                           child: Text('Height',
                           style: kMetniStili,),
                       ),
                       RotatedBox(
                           quarterTurns: -1,
                           child: Text(height.round().toString(),
                           style: kSayiStili,)
                       ),

                       SizedBox(width: 20),

                       Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children:<Widget> [

                           ButtonTheme(
                             minWidth: 36,
                             child: OutlineButton(
                               borderSide: BorderSide(color: Colors.redAccent),
                               child: Icon(FontAwesomeIcons.plus,size: 10,),
                               onPressed: (){
                                 setState(() {
                                   height++;
                                 });
                               },

                             ),
                           ),
                           SizedBox(width: 10),

                           ButtonTheme(
                             minWidth: 36,
                             child: OutlineButton(
                               borderSide: BorderSide(color: Colors.redAccent),
                               child: Icon(FontAwesomeIcons.minus,size: 10,),

                               onPressed: (){
                                 setState(() {
                                   height--;
                                 });
                               },

                             ),
                           ),

                         ],

                       ),
                     ],
                   ),
                 ),
                    ),




                Expanded(
                  child: MyContainer(
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        RotatedBox(
                          quarterTurns: -1,
                          child: Text('Weight',
                            style: kMetniStili,),
                        ),
                        RotatedBox(
                            quarterTurns: -1,
                            child: Text(weight.round().toString(),
                              style: kSayiStili,)
                        ),

                        SizedBox(width: 20),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:<Widget> [

                            ButtonTheme(
                              minWidth: 36,
                              child: OutlineButton(
                                borderSide: BorderSide(color: Colors.redAccent),
                                child: Icon(FontAwesomeIcons.plus,size: 10,),
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },

                              ),
                            ),
                            SizedBox(width: 10),

                            ButtonTheme(
                              minWidth: 36,
                              child: OutlineButton(
                                borderSide: BorderSide(color: Colors.redAccent),
                                child: Icon(FontAwesomeIcons.minus,size: 10,),

                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },

                              ),
                            ),

                          ],

                        ),
                      ],
                    ),
                  ),
                ),

              ],
                ),
            ),
          Expanded(
            child: MyContainer(
              child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.stretch,
               children: <Widget>[
                 Text('How Many Days A Week Do You Execise?',
                 textAlign: TextAlign.center,
                  style: TextStyle(

                      color:Colors.black,
                      fontSize: 15,
                      fontWeight:FontWeight.bold
                  ),

                 ),
                 SizedBox(height: 15),

                 Text(exercise.round().toString(),
                   textAlign: TextAlign.center,
                   style: kSayiStili,
                 ),
                 Slider(
                   activeColor: Colors.redAccent,
                   min:0,
                   max: 7,
                   divisions: 7,
                   onChanged: (double value) {
                     setState(() {
                       exercise = value;
                     });
                 }, value: exercise,

                 )

               ], 
             ),
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:<Widget> [
                  Text('How Many Cigarettes Do You Smoke Per Day ?',
                  textAlign: TextAlign.center,
                    style: TextStyle(

                      color:Colors.black,
                      fontSize: 15,
                      fontWeight:FontWeight.bold),


                  ),
                  SizedBox(height: 15),

                  Text(cigaratte.round().toString(),
                        textAlign: TextAlign.center,
                    style: kSayiStili,

                  ),

                  Slider(
                    min:0,
                    max:30,
                    activeColor: Colors.redAccent,
                    value: cigaratte,
                    onChanged: (double newValue) {
                      setState(() {
                        cigaratte = newValue;
                      });
                    },

                  ),


                ],
              ),
            ),
          ),
          Expanded(
            child:Row(
              children:<Widget> [


                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      selectedGender = 'WOMAN';
                    },
                    child: MyContainer(
                      child: IconCinsiyet(
                        cinsiyet: 'WOMAN',
                        icon: FontAwesomeIcons.venus,

                      ),
                    ),
                  ),
                ),


                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      selectedGender = 'MAN';
                    },
                    child: MyContainer(

                      child:IconCinsiyet(

                        cinsiyet: 'MAN',
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),


          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
                FlatButton(
                  color: Colors.white,
                  onPressed: (){

                  Navigator.push(context, MaterialPageRoute(builder:(context) =>ResultPage(
                    UserData(weight: weight,selectedGender: selectedGender,exercise: exercise,cigaratte: cigaratte,height: height,)
                  ) ) );

                  },
                   child:Text('CALCULATE',style: TextStyle(

                       color:Colors.black,
                       fontSize: 20,
                       fontWeight:FontWeight.bold
                   ),

                   ),
                ),
              ],

          ),
        ],

    ));
  }
}
