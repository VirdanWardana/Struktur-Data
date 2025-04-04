int squareHelper(int n, int acc) {
  return n == 0 ? acc : squareHelper(n - 1, acc + 2 * n - 1);
}

int square(int n) => squareHelper(n, 0);

int cubeHelper(int n, int acc) {
  return n == 0 ? acc : cubeHelper(n - 1, acc + square(n));
}

int cube(int n) => cubeHelper(n, 0);

void main() {
  print('Square of 5: ${square(5)}');
  print('Cube of 5: ${cube(5)}');
  print('Cube of 123: ${cube(123)}');
}