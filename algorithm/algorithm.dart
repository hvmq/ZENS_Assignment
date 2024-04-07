import 'dart:io';

void main() {
  print('Please enter an array with five elements:');
  final input = stdin.readLineSync();

  List<int>? listOfNumbers = input?.split(' ').map(int.parse).toList();
  listOfNumbers!.sort();
  int sum = listOfNumbers.reduce((a, b) => a + b);
  int min = listOfNumbers.first;
  int max = listOfNumbers.last;

  print(
      "Minimum and maximum values of the sum of 4 values:\n${sum - max} ${sum - min}");
  print("Total of array:\n$sum");
  print("Minimum value in array:\n${min}");
  print("Maximum value in array:\n${max}");
  findEvenElements(listOfNumbers);
  findOddElements(listOfNumbers);
}

void findEvenElements(List<int> list) {
  List<int> listEventNumbers =
      list.where((element) => element % 2 == 0).toList();
  print("Even elements in array:\n$listEventNumbers");
}

void findOddElements(List<int> list) {
  List<int> listOddNumbers = list.where((element) => element % 2 == 1).toList();
  print("Odd elements in array:\n$listOddNumbers");
}
