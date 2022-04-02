/**
Named parameters in dart are optional by default, user defined. 
So if they are not assigned by the user they get null which is not accepted. 
So when defining the data types of the parameters String?, int? 
We must specify it with nullable types such as:

Other than that, the problem can be solved by assigning default values to all parameters.
The final solution is required to enter these parameters.
*/
int sumThreeNumbs(
    {required int first, required int second, required int third}) {
  return first + second + third;
}

main(List<String> args) {
  final sum = sumThreeNumbs(first: 1, second: 2, third: 5);
  final sum2 = sumThreeNumbs(first: 5, second: 2, third: 4);
  
}
