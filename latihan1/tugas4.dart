// Tugas 4: Class Segitiga dengan named constructor berdasarkan jenis
// Konsep: Named Constructor

class Segitiga {
  double alas;
  double tinggi;
  String jenis;

  // Default constructor
  Segitiga(this.alas, this.tinggi, this.jenis);

  // Named constructor untuk segitiga siku-siku
  Segitiga.sikuSiku(double alas, double tinggi)
      : alas = alas,
        tinggi = tinggi,
        jenis = "Siku-Siku";

  // Named constructor untuk segitiga sama sisi
  Segitiga.samaSisi(double sisi)
      : alas = sisi,
        tinggi = sisi * 0.866,
        jenis = "Sama Sisi";

  double hitungLuas() => 0.5 * alas * tinggi;

  void display() {
    print("Jenis  : $jenis");
    print("Alas   : $alas");
    print("Tinggi : $tinggi");
    print("Luas   : ${hitungLuas()}");
  }
}

void main() {
  Segitiga s1 = Segitiga.sikuSiku(6, 8);
  s1.display();

  print("");

  Segitiga s2 = Segitiga.samaSisi(10);
  s2.display();
}
