import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/cupertino.dart';
double elv1=0.0;
double elv2=0.0;
Color elv1col=carot;
Color elv2col=carot;
Color elv1txt=red;
Color elv2txt=red;
void elvchange(elv type){
  if(type==elv.one){
    elv1=6.0;
    elv1col=whiteful;
    elv1txt=black;
    elv2=0.0;
    elv2col=carot;
    elv2txt=red;
  }
  if(type==elv.two){
    elv2=6.0;
    elv2col=whiteful;
    elv2txt=black;
    elv1=0.0;
    elv1col=carot;
    elv1txt=red;
  }

}

void colorchange(Box boxtype){
  if(boxtype==Box.b1){
    b1=red;
    txt1=whiteful;
    txt2=black;
    txt3=black;
    txt4=black;
    txt5=black;
    txt6=black;
    txt7=black;
    txt8=black;
    b2=whiteful;
    b3=whiteful;
    b4=whiteful;
    b5=whiteful;
    b6=whiteful;
    b7=whiteful;
    b8=whiteful;
  }
  if(boxtype==Box.b2){
    b1=whiteful;
    txt2=whiteful;
    txt1=black;
    txt2=whiteful;
    txt3=black;
    txt4=black;
    txt5=black;
    txt6=black;
    txt7=black;
    txt8=black;
    b2=red;
    b3=whiteful;
    b4=whiteful;
    b5=whiteful;
    b6=whiteful;
    b7=whiteful;
    b8=whiteful;
  }
  if(boxtype==Box.b3){
    b1=whiteful;
    txt1=black;
    txt2=black;
    txt3=whiteful;
    txt4=black;
    txt5=black;
    txt6=black;
    txt7=black;
    txt8=black;
    b2=whiteful;
    b3=red;
    b4=whiteful;
    b5=whiteful;
    b6=whiteful;
    b7=whiteful;
    b8=whiteful;
  }
  if(boxtype==Box.b4){
    b1=whiteful;
    txt1=black;
    txt2=black;
    txt3=black;
    txt4=whiteful;
    txt5=black;
    txt6=black;
    txt7=black;
    txt8=black;
    b2=whiteful;
    b3=whiteful;
    b4=red;
    b5=whiteful;
    b6=whiteful;
    b7=whiteful;
    b8=whiteful;
  }
  if(boxtype==Box.b5){
    b1=whiteful;
    txt1=black;
    txt2=black;
    txt3=black;
    txt4=black;
    txt5=whiteful;
    txt6=black;
    txt7=black;
    txt8=black;
    b2=whiteful;
    b3=whiteful;
    b4=whiteful;
    b5=red;
    b6=whiteful;
    b7=whiteful;
    b8=whiteful;
  }
  if(boxtype==Box.b6){
    b1=whiteful;
    txt1=black;
    txt2=black;
    txt3=black;
    txt4=black;
    txt5=black;
    txt6=whiteful;
    txt7=black;
    txt8=black;
    b2=whiteful;
    b3=whiteful;
    b4=whiteful;
    b5=whiteful;
    b6=red;
    b7=whiteful;
    b8=whiteful;
  }
  if(boxtype==Box.b7){
    b1=whiteful;
    txt1=black;
    txt2=black;
    txt3=black;
    txt4=black;
    txt5=black;
    txt6=black;
    txt7=whiteful;
    txt8=black;
    b2=whiteful;
    b3=whiteful;
    b4=whiteful;
    b5=whiteful;
    b6=whiteful;
    b7=red;
    b8=whiteful;
  }
  if(boxtype==Box.b8){
    b1=whiteful;
    txt1=black;
    txt2=black;
    txt3=black;
    txt4=black;
    txt5=black;
    txt6=black;
    txt7=black;
    txt8=whiteful;
    b2=whiteful;
    b3=whiteful;
    b4=whiteful;
    b5=whiteful;
    b6=whiteful;
    b7=whiteful;
    b8=red;
  }
}
void ampmchaage(ampm type){
  if(type==ampm.am){
    am=carot;
    pm=whiteful;
  }
  if(type==ampm.pm){
    pm=carot;
    am=whiteful;
  }

}
void malefemale(gender type){
  if(type==gender.male){
    male=carot;
    female=whiteful;
  }
  if(type==gender.female){
    female=carot;
    male=whiteful;
  }

}

Color red = const Color(0xFF9E0505);
Color carot = const Color(0xFFF3A1A1);
Color black = const Color(0xFF262626);
Color white = const Color(0xFFF5F3F3);
Color whiteful = const Color(0xFFFFFFFF);
Color grey = const Color(0xFF7D7C7C);

enum Box{
  b1,b2,b3,b4,b5,b6,b7,b8
}
Color male=whiteful;
Color female=whiteful;
enum ampm{
  am,pm
}
enum gender{
  male,female
}
enum elv{
  one,two
}


Color am=whiteful;
Color pm=whiteful;
Color b1=whiteful;
Color b2=whiteful;
Color b3=whiteful;
Color b4=whiteful;
Color b5=whiteful;
Color b6=whiteful;
Color b7=whiteful;
Color b8=whiteful;

//txt colors
Color txt1=black;
Color txt2=black;
Color txt3=black;
Color txt4=black;
Color txt5=black;
Color txt6=black;
Color txt7=black;
Color txt8=black;
