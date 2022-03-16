/*
SORU1: Parametre olarak  bir tane int sayı alan fonksiyon yazınız.
Bu fonksiyon aldığı değere kadar olan çift sayıların toplamını geriye döndürsün..

SORU2: Daire alanını hesaplayan fonksiyonu yazınız. PI sayısı opsiyonel olmalı
Eğer PI sayısı verilmediyse varsayılan olarak 3,14 alarak hesaplama yapın.

SORU3: Bir ücgenin kenarlarını isimlendirilmiş parametre olarak alan fonksiyon yazınız.
Bu fonksiyon kenar değerlerine göre bu üçgenin çeşit kenar ikiz kenar veya eşkenar olduğunu
ekrana yazdırsın, geriye bir değer döndürmesin.
*/
import '19-Import18-file.dart';

void main(List<String> args) {
  int resultFunc1 = function1(6);
  print("ResultFunc1 = $resultFunc1");
  double resultFunc2 = circleArea(5);
  print("ResultFunc2 = $resultFunc2");
  print(
    "First triangle type: ",
  );
  triangle(7, 7, 7);
  print("*********************");
  print(
    "Second triangle type: ",
  );
  triangle(5, 5, 4);
  print("*********************");
  print(
    "Third triangle type: ",
  );
  triangle(5, 9, 4);
  print("*********************");
}
