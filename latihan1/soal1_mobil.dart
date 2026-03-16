// Tugas Latihan 1 - Soal 1
// Membuat class Mobil dengan properti merk, model, tahun

class Mobil {
  String? merk;
  String? model;
  int? tahun;

  // Constructor dengan parameter
  Mobil(this.merk, this.model, this.tahun);

  void display() {
    print("Merk  : $merk");
    print("Model : $model");
    print("Tahun : $tahun");
  }
}

void main() {
  Mobil mobil1 = Mobil("Toyota", "Avanza", 2022);
  mobil1.display();
}
