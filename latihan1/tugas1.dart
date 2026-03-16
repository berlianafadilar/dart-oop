// Tugas 1: Class Mobil dengan properti merk, model, tahun
// Konsep: Class, Object, Constructor

class Mobil {
  String merk;
  String model;
  int tahun;

  Mobil(this.merk, this.model, this.tahun);

  void display() {
    print("Merk  : $merk");
    print("Model : $model");
    print("Tahun : $tahun");
  }
}

void main() {
  Mobil mobil = Mobil("Toyota", "Avanza", 2022);
  mobil.display();
}
