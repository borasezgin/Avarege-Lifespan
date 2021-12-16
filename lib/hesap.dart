import 'package:yasamsuresi/user_data.dart';

class Hesap{

  UserData _userData;
  Hesap(this._userData);

  double hesaplama(){

    double sonuc;

    sonuc = 90 + _userData.exercise - _userData.cigaratte;
    sonuc = sonuc + (_userData.height/_userData.weight);

    if(_userData.selectedGender =='WOMAN'){
      return sonuc+3;
    }
    else{
      return sonuc;
    }


  }

}