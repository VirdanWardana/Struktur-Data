void main() {
  List<num> data = List.generate(10, (index) => (index + 1) * 1.0);
  data.shuffle(); // Agar data acak
  print('Data Sebelum Pengurutan:');
  printData(data);

  DateTime startTime = DateTime.now();
  quickSortDescending(data, 0, data.length - 1);
  Duration elapsedTime = DateTime.now().difference(startTime);

  print('Data Setelah Pengurutan Descending:');
  printData(data);
  print('Waktu ${elapsedTime.inMilliseconds} ms');
}

// Quick Sort Descending
void quickSortDescending<T extends Comparable<T>>(List<T> arr, int p, int r) {
  int q;
  if (p < r) {
    q = partitionDescending(arr, p, r);
    quickSortDescending(arr, p, q);
    quickSortDescending(arr, q + 1, r);
  }
}

// Partition function untuk Descending
int partitionDescending<T extends Comparable<T>>(List<T> arr, int p, int r) {
  int i = p, j = r;
  T pivot = arr[p], temp;

  while (i <= j) {
    // Dibalik untuk descending
    while (pivot.compareTo(arr[j]) > 0) j--;
    while (pivot.compareTo(arr[i]) < 0) i++;

    if (i < j) {
      temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
      i++;
      j--;
    } else {
      return j;
    }
  }
  return j;
}

// Fungsi print data
void printData<T>(List<T> data) {
  for (T item in data) {
    print('$item ');
  }
  print('');
}
