void mergeSortAscending<T extends Comparable<T>>(List<T> arr, int l, int r) {
  int med;
  if (l < r) {
    med = (l + r) ~/ 2;
    mergeSortAscending(arr, l, med);
    mergeSortAscending(arr, med + 1, r);
    mergeAscending(arr, l, med, r);
  }
}

void mergeAscending<T extends Comparable<T>>(List<T> arr, int left, int median, int right) {
  List<T?> temp = List.filled(arr.length, null);
  int kiri1, kanan1, kiri2, kanan2, i, j;
  kiri1 = left;
  kanan1 = median;
  kiri2 = median + 1;
  kanan2 = right;
  i = left;
  while ((kiri1 <= kanan1) && (kiri2 <= kanan2)) {
    if (arr[kiri1].compareTo(arr[kiri2]) <= 0) {
      temp[i] = arr[kiri1];
      kiri1++;
    } else {
      temp[i] = arr[kiri2];
      kiri2++;
    }
  i++;
  }
  while (kiri1 <= kanan1) {
    temp[i] = arr[kiri1];
    kiri1++;
    i++;
  }
  while (kiri2 <= kanan2) {
    temp[i] = arr[kiri2];
    kiri2++;
    i++;
  }
  j = left;
  while (j <= right) {
    arr[j] = temp[j]!;
    j++;
  }
}