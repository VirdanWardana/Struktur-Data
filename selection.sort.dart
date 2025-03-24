void selectionSortAscending<T extends Comparable<T>>(List<T> arr) {
  T temp;
  for (int i = arr.length - 1; i >= 0; i--) {
    int max = i;
    for (int j = i - 1; j >= 0; j--) {
      if (arr[j].compareTo(arr[max]) > 0) max = j;
    }
    temp = arr[i];
    arr[i] = arr[max];
    arr[max] = temp;
  }
}

void selectionSortDescending<T extends Comparable<T>>(List<T> arr) {
  T temp;
  for (int i = arr.length - 1; i >= 0; i--) {
    int min = i;
    for (int j = i - 1; j >= 0; j--) {
      if (arr[j].compareTo(arr[min]) < 0) min = j;
    }
    temp = arr[i];
    arr[i] = arr[min];
    arr[min] = temp;
  }
}