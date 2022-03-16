/*
  We use curly and square brackets in cases where the parameters we pass to our methods are optional 
whether it is given or not.
  If we use square brackets [], this eliminates the need to send the relevant parameters to the method.
  If we use curly braces {}, the parameters are optional here as well, but when specifying these parameters, 
the ordering loses its importance and we have to give their names when passing the parameters.
  We can also assign default values to parameters by saying = in method definitions. 
Thanks to these values, if the user has not assigned method parameters, these default values are used.
 */

main(List<String> args) {
  int result = sumtheNumbers(3, 5, 8);
  print("Result main: $result");
  int result1 = sumtheNumbers1(5);
  print("Result1 main: $result1");
  int result2 = sumtheNumbers2(5, numb2: 5, numb1: 5, numb3: 1); // Very useful.
  print("Result2 main: $result2");
  int resultVolume = calculateTheVolume(width: 5, size: 4);
  print("Volume result = $resultVolume");
}

// Required parameter
int sumtheNumbers(int numb1, int numb2, int numb3) => numb1 + numb2 + numb3;

// Optional parameter
int sumtheNumbers1(int numb1, [int numb2 = 3, int numb3 = 4]) {
  return numb1 + numb2 + numb3;
}

// Optional named parameter
int sumtheNumbers2(int numb4, {int numb1 = 3, int numb2 = 3, int numb3 = 4}) {
  return numb4 + numb1 + numb2 + numb3;
}

// Example.
int calculateTheVolume({int width = 1, int size = 1, int heigth = 1}) {
  return width * size * heigth;
}
