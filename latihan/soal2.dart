import 'dart:io';

void generateCombinations(String prefix, int n) {
  if (n == 0) {
    stdout.write('$prefix '); 
  } else {
    for (var char in ['a', 'b', 'c']) {
      generateCombinations(prefix + char, n - 1);
    }
  }
}

void main() {
  generateCombinations("", 3); // Jumlah karakter = 3
}