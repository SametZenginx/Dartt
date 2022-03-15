/*Sorular
1- Adınızı, soyadınızı ve yaşınızı farklı değişkenlerde saklayıp, ekrana
"Benim adım emre altunbilek, yaşım 34 ve tüm ismimdeki karakter sayısı : 15'tir" yazdırın

2- Bir üçgenin tüm kenarlarını değişkenlerde saklayıp çevresini ekrana yazdırın
örnek birinci kenarı 3, ikinci kenarı 4, üçüncü kenarı 5 olan üçgenin çevresi 12dir
*/
void main(List<String> args) {
  String name = "Samet";
  String surName = "Zengin";
  int age = 19;

  print(
      "My name is $name $surName and my age is $age and number of characters in my entire name: ${(name + surName).length} ");

  int x = 3;
  int y = 4;
  int z = 5;

  print(
      "The sides of the triangle is $x $y $z, Perimeter of triangle = ${x + y + z}");
}
