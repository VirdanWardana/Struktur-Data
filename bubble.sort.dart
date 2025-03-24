void bubbleSortAscending<T extends Comparable<T>>(List<T> arr) {
  int i, j;
  T temp;
  for (i = 0; i < arr.length - 1; i++) {
    for (j = 0; j < arr.length - i - 1; j++) {
      if (arr[j].compareTo(arr[j + 1]) > 0) {
        temp = arr[j + 1];
        arr[j + 1] = arr[j];
        arr[j] = temp;
      }
    }
  }
}