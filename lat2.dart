void main() {
  List<num> data = List.generate(10, (index) => (index + 1)..toDouble());
  print('Data sebelum pengurutan:');
  printData(data);

  DateTime startTime = DateTime.now();
  mergeSort(data, 0, data.length - 1, descending: true); // Ganti true/false
  Duration elapsedTime = DateTime.now().difference(startTime);

  print('Data setelah pengurutan descending:');
  printData(data);
  print('Waktu: ${elapsedTime.inMilliseconds} ms');
}

void mergeSort<T extends Comparable<T>>(List<T> arr, int l, int r, {bool descending = false}) {
  if (l < r) {
    int med = (l + r) ~/ 2;
    mergeSort(arr, l, med, descending: descending);
    mergeSort(arr, med + 1, r, descending: descending);
    merge(arr, l, med, r, descending);
  }
}

void merge<T extends Comparable<T>>(List<T> arr, int left, int median, int right, bool descending) {
  List<T?> temp = List.filled(arr.length, null);
  int kiri1 = left, kanan1 = median, kiri2 = median + 1, kanan2 = right, i = left;

  while (kiri1 <= kanan1 && kiri2 <= kanan2) {
    if (descending) {
      if (arr[kiri1].compareTo(arr[kiri2]) >= 0) {
        temp[i] = arr[kiri1];
        kiri1++;
      } else {
        temp[i] = arr[kiri2];
        kiri2++;
      }
    } else {
      if (arr[kiri1].compareTo(arr[kiri2]) <= 0) {
        temp[i] = arr[kiri1];
        kiri1++;
      } else {
        temp[i] = arr[kiri2];
        kiri2++;
      }
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

  for (int j = left; j <= right; j++) {
    arr[j] = temp[j]!;
  }
}

void printData<T>(List<T> data) {
  for (T objek in data) {
    print('$objek ');
  }
  print('');
}
