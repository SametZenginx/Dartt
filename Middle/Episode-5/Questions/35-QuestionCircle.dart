/*
Soru 1
CemberDaire isimli sınıf oluşturun. 
Bu sınıfın yarıçap alan kurucusu olmalı.
Ayrıca cevre ve alanını hesaplayan metotlar olmalı.
(Pi sayısı 3,14 alın)
*/

import 'Circle.dart';

main(List<String> args) {
  Circle x = Circle(5);

  print("Area : ${x.areaofCircle()}");
  print("Perimeter : ${x.perimeterofCircle()}");
}
