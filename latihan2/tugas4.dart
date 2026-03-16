// Tugas 4: Abstract class Bentuk dengan class Lingkaran
// Konsep: Abstract Class, Method Abstract

import 'dart:math';

abstract class Bentuk {
  // Method abstract - wajib diimplementasikan oleh subclass
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
