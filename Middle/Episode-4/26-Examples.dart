import 'dart:io';
import 'dart:math';

void main(List<String> args) {
/*
1- Sehirleri tutan bir liste olusturun, 4 tane il ekleyip
sırasıyla ekrana yazdırın.
*/
  List cities = ["Ankara", "Istanbul", "Kutahya", "Izmir"];
  for (int i = 0; i < cities.length; i++) {
    print("${i + 1}.City is ${cities[i]}");
  }

/*
2- Keyleri string, değerleri dynamic olan bir map olusturun.
Bu map yapısında bilgisayarınızın işlemci çekirdek sayısını,
ram miktarını ve ssd olup olmadıgı bilgisini tutun ve ekrana yazdırın.
*/
  Map<String, dynamic> sametPC = {};
  sametPC["Number of processor cores"] = 8;
  sametPC["Ram"] = 8;
  sametPC["SSD"] = true;
  for (var i in sametPC.entries) {
    print("${i.key} = ${i.value}");
  }
/*
3- Her bir elemanında  keyleri string,  value'leri dynamic  olan bir liste olusturun.
Bu listedeki her bir eleman il adını, ilçe sayısını, plaka kodunu tutsun.
Sonrasında da bu listeyi okunaklı bir şekilde yazdırın
Örnek listenin 1. elemanında bulunan il ankara, plaka kodu:06, ilçe sayısı:10(değerler rastgele olabilir).
*/

  List<Map<String, dynamic>> list = <Map<String, dynamic>>[];

  Map<String, dynamic> addPlace1 = {};
  Map<String, dynamic> addPlace2 = {};

  addPlace1["Province"] = "Kutahya";
  addPlace1["District"] = "Emet";
  addPlace1["Plate code"] = 43700;

  addPlace2["Province"] = "Istanbul";
  addPlace2["District"] = "Hadimkoy";
  addPlace2["Plate code"] = 801;

  list.add(addPlace1);
  list.add(addPlace2);

  for (var i = 0; i < list.length; i++) {
    var currentPlace = list[i];
    print(
        "${i + 1}. province is ${currentPlace["Province"]} district is ${currentPlace["District"]} and plate code is ${currentPlace["Plate code"]}");
  }
/*
4- 5 elemanlı iki farklı liste olusturun. Elemanlar 0-50'ye rastgele şekilde olusturulsun
Bu elemanları tek bir listeye aktarın
Olusan son listenin elemanlarının karelerini tutan set yapısı olusturup ekrana yazdırın.
*/

  List<int> list1 = List.filled(5, 0);
  List<int> list2 = List.filled(5, 0);
  List<int> lastList = List.filled(0, 0, growable: true);
  for (int i = 0; i < 5; i++) {
    list1[i] = Random().nextInt(50);
    list2[i] = Random().nextInt(50);
  }

  lastList = [...list1, ...list2];
  print(lastList);

  Set lastSet = Set();
  for (int i = 0; i < lastList.length; i++) {
    int x = lastList[i] * lastList[i];
    lastSet.add(x);
  }
  print(lastSet);

/*
5- Kullanıcıdan aldıgınız integer pozitif sayıları bir listede tutun, kullanıcı -1 değerini
girdiğinde girilen sayıların ortalamasını ekrana yazdırın.
*/

  List<int> numbList = [];
  double result = 0;
  double average = 0;
  while (true) {
    print(
        "Enter the number, -1 to exit. If you enter the same numbers. collects only once.");
    int numb = int.parse(stdin.readLineSync()!);
    if (numb == -1) {
      print("Exiting...");
      break;
    }

    if (numbList.contains(numb)) {
      print("You entered the same number. not added.");
      continue;
    }
    numbList.add(numb);
  }
  print("Amount of numbers entered is ${numbList.length}");

  for (int i = 0; i < numbList.length; i++) {
    result = result + numbList[i];
  }
  average = (result / numbList.length);
  print("Average of numbers is ${average}");
}
