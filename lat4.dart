// Kelas Mahasiswa yang mengimplementasikan Comparable untuk perbandingan
class Mahasiswa implements Comparable<Mahasiswa> {
  String nrp; // Nomor Registrasi Pendaftaran
  String nama; // Nama Mahasiswa

  // Konstruktor untuk inisialisasi NRP dan Nama
  Mahasiswa(this.nrp, this.nama);

  // Override metode toString untuk mencetak informasi Mahasiswa
  @override
  String toString() => 'Mahasiswa(nrp: $nrp, nama: $nama)';

  // Implementasi metode compareTo untuk membandingkan berdasarkan NRP
  @override
  int compareTo(Mahasiswa other) => this.nrp.compareTo(other.nrp);
}

// Fungsi untuk mengurutkan daftar Mahasiswa menggunakan Merge Sort
List<Mahasiswa> mergeSort(List<Mahasiswa> list) {
  // Jika daftar memiliki 1 elemen atau kurang, sudah terurut
  if (list.length <= 1) return list;

  // Menentukan titik tengah daftar
  int mid = list.length ~/ 2;

  // Mengurutkan bagian kiri dan kanan secara rekursif, lalu menggabungkannya
  return merge(mergeSort(list.sublist(0, mid)), mergeSort(list.sublist(mid)));
}

// Fungsi untuk menggabungkan dua daftar Mahasiswa yang sudah terurut
List<Mahasiswa> merge(List<Mahasiswa> left, List<Mahasiswa> right) {
  List<Mahasiswa> result = []; // Daftar hasil penggabungan
  int i = 0, j = 0; // Indeks untuk daftar kiri dan kanan

  // Menggabungkan elemen dari kedua daftar hingga salah satu habis
  while (i < left.length && j < right.length) {
    // Menambahkan elemen yang lebih kecil ke hasil
    result.add(left[i].compareTo(right[j]) <= 0 ? left[i++] : right[j++]);
  }

  // Menambahkan sisa elemen dari daftar kiri (jika ada)
  result.addAll(left.sublist(i));
  // Menambahkan sisa elemen dari daftar kanan (jika ada)
  result.addAll(right.sublist(j));
  
  return result; // Mengembalikan daftar hasil penggabungan
}

// Fungsi utama untuk menjalankan program
void main() {
  // Membuat daftar mahasiswa
  List<Mahasiswa> mahasiswaList = [
    Mahasiswa('362458302022', 'Jeponn'),
    Mahasiswa('362458302023', 'Nazaa'),
    Mahasiswa('362458302024', 'Alfarizy'),
    Mahasiswa('362458302025', 'Fahmi'),
  ];

  // Mencetak daftar sebelum diurutkan
  print('Sebelum diurutkan: $mahasiswaList');
  
  // Mengurutkan daftar mahasiswa
  List<Mahasiswa> sortedList = mergeSort(mahasiswaList);
  
  // Mencetak daftar setelah diurutkan
  print('Setelah diurutkan: $sortedList');
}