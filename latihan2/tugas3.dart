// Tugas 3: Polymorphism - BangunDatar, Persegi, Segitiga
// Konsep: Inheritance + Method Overriding (Polymorphism)

class BangunDatar {
  void hitungLuas() {
    print("Menghitung luas bangun datar...");
  }
}

class Persegi extends BangunDatar {
  double sisi;

  Persegi(this.sisi);

  @override
  void hitungLuas() {
    double luas = sisi * sisi;
    print("Luas Persegi (sisi=$sisi) = $luas");
  }
}

class Segitiga extends BangunDatar {
  double alas;
  double tinggi;

  Segitiga(this.alas, this.tinggi);

  @override
  void hitungLuas() {
    double luas = 0.5 * alas * tinggi;
    print("Luas Segitiga (alas=$alas, tinggi=$tinggi) = $luas");
  }
}

void main() {
  Persegi persegi = Persegi(5);
  persegi.hitungLuas();

  Segitiga segitiga = Segitiga(8, 6);
  segitiga.hitungLuas();
}
