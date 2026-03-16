// Tugas Latihan 2 - Soal 4
// Abstract class Bentuk dengan metode abstrak hitungLuas

import 'dart:math';

abstract class Bentuk {
  // Metode abstrak, wajib diimplementasikan oleh subclass
  double hitungLuas();
}

class Lingkaran extends Bentuk {
  double jariJari;

  Lingkaran(this.jariJari);

  @override
  double hitungLuas() {
    return pi * jariJari * jariJari;
  }
}

void main() {
  Lingkaran lingkaran = Lingkaran(7);
  print("Jari-jari : ${lingkaran.jariJari}");
  print("Luas      : ${lingkaran.hitungLuas().toStringAsFixed(2)}");
}
