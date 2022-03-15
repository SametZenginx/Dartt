/*
Question-1: 3 tane double değişken oluşturup bunların ortalamasını yazdıran program yazınız.
Question-2: kenarlarını girdiğiniz üçgenin çeşidini yazdıran program yazınız.
Question-3: vize ve final notlarını alıp dersi geçip geçmediğini bulan program yazınız.
(geçme notu alt değeri = 50, vizenin %40 finalin %60'ı alınır.)

Question-4: Kendi adınızı ekrana 5 kere yazdıran uygulamayı tüm döngü ifadeleriyle yazınız.
Question-5: 1'den 100'e kadar olan ve 15 ile tam bölünen sayıların karelerini ekrana yazdırınız.
Question-6: tanimlanan int bir sayının faktoriyelini bulan uygulamayı yazınız.

*/

main(List<String> args) {
// Question-1:

  double numb1 = 5, numb2 = 10, numb3 = 15;
  double average;
  average = (numb1 + numb2 + numb3) / 3;
  print("Average of $numb1 $numb2 $numb3 = $average");

// Question-2:

  double edge1 = 7, edge2 = 8, edge3 = 8;
  if (edge1 + edge2 > edge3 && edge1 + edge3 > edge2) {
    print("It's a triangle but wait.");
    if (edge1 == edge2 && edge1 == edge3 && edge2 == edge3) {
      print("Equilateral triangle.");
    } else if (edge1 == edge2 || edge1 == edge3 || edge2 == edge3) {
      print("Isosceles triangle");
    } else {
      print("Scalene triangle");
    }
  } else {
    print("This is not a triangle.");
  }

// Question-3:

  double visaExam = 43, finalExam = 58;
  double result = visaExam * 0.4 + finalExam * 0.6;
  if (finalExam < 50) {
    print(
        "You failed the lesson because your final exam is $finalExam (Must be 50 or more.)");
  } else {
    if (result >= 50) {
      print("You result is $result and You passed the lesson.");
    } else {
      print("You failed the lesson. your result is $result");
    }
  }

// Question-4:

  // 1. for
  for (int i = 0; i < 5; i++) {
    print("Mustafa Samet Zengin");
  }
  // 2. while
  int count = 0;
  while (count < 5) {
    print("Mustafa Samet Zengin");
    count++;
  }
  // 3. do-while
  int count2 = 0;
  do {
    print("Mustafa Samet Zengin");
    count2++;
  } while (count2 < 5);

// Question-5:

  for (int i = 1; i <= 100; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print(i * i);
    } else {
      continue;
    }
  }

// Question-6:
  int x = 5;
  int multiplier = 1;
  for (int i = 1; x >= i; i++) {
    multiplier *= i;
  }
  print("$x! = $multiplier");
}
