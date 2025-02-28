import 'dart:io';

// Fungsi untuk menghitung FPB
int hitungFPB(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}

void main() {
  // Input dari pengguna
  stdout.write("Bilangan 1: ");
  int bilangan1 = int.parse(stdin.readLineSync()!);

  stdout.write("Bilangan 2: ");
  int bilangan2 = int.parse(stdin.readLineSync()!);

  // Hitung dan tampilkan FPB
  int fpb = hitungFPB(bilangan1, bilangan2);
  print("FPB $bilangan1 dan $bilangan2 = $fpb");
}
