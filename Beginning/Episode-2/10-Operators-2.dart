void main(List<String> args) {
// Increment And Decrement Operators
  int numb1 = 10;
  numb1 = numb1 + 1;
  numb1 += 5;
  print(numb1);

  numb1++;
  print(numb1);

  int numb2 = 10;
  print(numb2++); // 10 and +1
  print(++numb2); // +1 and 12... VERY DIFFERENT.!,

// Opeartion Priority
// first () after ++x,--x after * and / after + and - after = after x++,x--

  int s1 = 10, s2 = 5;
  double result = 0;

  result = ((s1 + s2 * 3 - s2) + s2 - s1 * 5 + s1).toDouble();
  print(result);

  result = (s1 * s2 + 4 / 2) + s1++ * s2 + (++s1);
  print(result);
}
