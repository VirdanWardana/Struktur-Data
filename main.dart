import 'insertion_sort.dart';
import 'selection_sort.dart';
import 'bubble_sort.dart';
import 'shell_sort.dart';
import 'quick_sort.dart';
import 'dart:math';



void main() {
  Set<int> dataTanpaDuplikasi = {};
  int jumlahData = 250000;

  while (dataTanpaDuplikasi.length < jumlahData) {
    dataTanpaDuplikasi.add(Random().nextInt(jumlahData) + 1);
  }

  List<num> data = dataTanpaDuplikasi.toList();

  DateTime insertionSortStart = DateTime.now();
  insertionSortAscending(data);
  Duration insertionSortElapsedTime = DateTime.now().difference(insertionSortStart);
  print("Waktu Insertion Sort secara Ascending : ${insertionSortElapsedTime}");
  DateTime selectionSortStart = DateTime.now();
  selectionSortAscending(data);
  Duration selectionSortElapsedTime = DateTime.now().difference(selectionSortStart);
  print("Waktu Selection Sort secara Ascending : ${selectionSortElapsedTime}");
  DateTime bubbleSortStart = DateTime.now();
  bubbleSortAscending(data);
  Duration bubbleSortElapsedTime = DateTime.now().difference(bubbleSortStart);
  print("Waktu Bubble Sort secara Ascending : ${bubbleSortElapsedTime}");
  DateTime shellSortStart = DateTime.now();
  shellSortAscending(data);
  Duration shellSortElapsedTime = DateTime.now().difference(shellSortStart);
  print("Waktu Shell Sort secara Ascending : ${shellSortElapsedTime}");
  DateTime quickSortStart = DateTime.now();
  quickSortAscending(data, 0, data.length - 1);
  Duration quickSortElapsedTime = DateTime.now().difference(quickSortStart);
  print("Waktu Quick Sort secara Ascending : ${quickSortElapsedTime}");
}