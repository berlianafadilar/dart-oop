// Tugas Latihan 2 - Soal 3
// Polymorphism: class BangunDatar dengan override hitungLuas

class BangunDatar {
  void hitungLuas() {
    print("Menghitung luas bangun datar.");
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
  Persegi persegi = Persegi(8);
  persegi.hitungLuas();

  Segitiga segitiga = Segitiga(10, 6);
  segitiga.hitungLuas();
}
