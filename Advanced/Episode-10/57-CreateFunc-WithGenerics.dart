main(List<String> args) {
  double average = calculateAverage<double>(5, 5.4);
  print("Average: $average");
}

double calculateAverage<T extends num>(T s1, T s2) {
  return (s1 + s2) / 2;
}
