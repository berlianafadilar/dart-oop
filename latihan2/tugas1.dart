// Tugas 1: Inheritance - class Hewan dan class Kucing
// Konsep: Inheritance, super constructor, method overriding

class Hewan {
  String nama;

  Hewan(this.nama);

  void suara() {
    print("$nama mengeluarkan suara...");
  }
}

class Kucing extends Hewan {
  String jenisBulu;

  Kucing(String nama, this.jenisBulu) : super(nama);

  @override
  void suara() {
    print("$nama bersuara: Meow!");
  }

  void display() {
    print("Nama       : $nama");
    print("Jenis Bulu : $jenisBulu");
  }
}

void main() {
  Kucing kucing = Kucing("Kitty", "Panjang");
  kucing.display();
  kucing.suara();
}
