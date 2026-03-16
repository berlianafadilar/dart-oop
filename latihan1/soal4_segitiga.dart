// Tugas Latihan 1 - Soal 4
// Class Segitiga dengan named constructor berdasarkan jenis

class Segitiga {
  double alas;
  double tinggi;
  String jenis;

  // Named constructor: segitiga siku-siku
  Segitiga.sikuSiku(this.alas, this.tinggi) : jenis = "Siku-Siku";

  // Named constructor: segitiga sama sisi
  Segitiga.samaSisi(double sisi)
      : alas = sisi,
        tinggi = sisi * 0.866, // tinggi = sisi * (sqrt(3)/2)
        jenis = "Sama Sisi";

  // Named constructor: segitiga sembarang
  Segitiga.sembarang(this.alas, this.tinggi) : jenis = "Sembarang";

  double hitungLuas() => 0.5 * alas * tinggi;

  void display() {
    print("Jenis   : $jenis");
    print("Alas    : $alas");
    print("Tinggi  : $tinggi");
    print("Luas    : ${hitungLuas()}");
  }
}

void main() {
  Segitiga s1 = Segitiga.sikuSiku(6, 8);
  print("--- Segitiga Siku-Siku ---");
  s1.display();

  print("");

  Segitiga s2 = Segitiga.samaSisi(10);
  print("--- Segitiga Sama Sisi ---");
  s2.display();

  print("");

  Segitiga s3 = Segitiga.sembarang(5, 7);
  print("--- Segitiga Sembarang ---");
  s3.display();
}
