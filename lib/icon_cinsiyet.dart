


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconCinsiyet extends StatelessWidget {
  final String cinsiyet;
  final IconData icon;

  IconCinsiyet({this.cinsiyet='Default',this.icon=FontAwesomeIcons.addressCard});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[Icon(icon,size: 50,color:Colors.redAccent,
      ),
        SizedBox(height: 10,),
        Text(cinsiyet,style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
