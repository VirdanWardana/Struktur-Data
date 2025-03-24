// Fungsi insertion sort untuk ascending (menaik)
void insertionSortAscending<T extends Comparable<T>>(List<T> arr) {
  for (int i = arr.length - 1; i >= 0; i--) { // Mulai dari elemen terakhir ke awal
    for (int j = i + 1, k = i; j < arr.length; j++) { // Periksa elemen setelah i
      if (arr[j].compareTo(arr[k]) > 0) { // Jika elemen di j lebih besar, berhenti
        break;
      } else { 
        T temp = arr[k]; // Tukar elemen di posisi k dan j
        arr[k] = arr[j];
        arr[j] = temp;
        k = j; // Update posisi k ke j
      }
    }
  }
}

// Fungsi insertion sort untuk descending (menurun)
void insertionSortDescending<T extends Comparable<T>>(List<T> arr) {
  for (int i = arr.length - 1; i >= 0; i--) { // Mulai dari elemen terakhir ke awal
    for (int j = i + 1, k = i; j < arr.length; j++) { // Periksa elemen setelah i
      if (arr[j].compareTo(arr[k]) < 0) { // Jika elemen di j lebih kecil, berhenti
        break;
      } else {
        T temp = arr[k]; // Tukar elemen di posisi k dan j
        arr[k] = arr[j];
        arr[j] = temp;
        k = j; // Update posisi k ke j
      }
    }
  }
}

// Fungsi untuk menampilkan isi list
void display<T>(List<T> data) {
  for (T obj in data) { // Loop setiap elemen dalam list
    print('$obj '); // Cetak elemen
  }
  print(''); // Cetak baris baru
}

void main() {
  // Membuat list dengan 10 elemen kelipatan 2
  List<num> data = List<num>.generate(10, (index) => (index + 1) * 2);
  data.shuffle(); // Mengacak urutan data
  print('Data Sebelum Pengurutan:');
  display(data); // Tampilkan data sebelum sorting

  // Proses pengurutan ascending
  print('Pengurutan Ascending:');
  DateTime startAsc = DateTime.now(); // Catat waktu mulai
  insertionSortAscending<num>(data); // Panggil fungsi sorting ascending
  Duration elapsedAsc = DateTime.now().difference(startAsc); // Hitung waktu proses
  display(data); // Tampilkan hasil sorting ascending
  print('Waktu: $elapsedAsc\n'); // Tampilkan waktu eksekusi

  // Mengacak lagi untuk percobaan descending
  data.shuffle(); 
  print('Data Sebelum Pengurutan Descending:');
  display(data); // Tampilkan data sebelum sorting descending

  // Proses pengurutan descending
  print('Pengurutan Descending:');
  DateTime startDesc = DateTime.now(); // Catat waktu mulai
  insertionSortDescending<num>(data); // Panggil fungsi sorting descending
  Duration elapsedDesc = DateTime.now().difference(startDesc); // Hitung waktu proses
  display(data); // Tampilkan hasil sorting descending
  print('Waktu: $elapsedDesc'); // Tampilkan waktu eksekusi
}
