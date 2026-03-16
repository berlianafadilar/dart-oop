// Tugas Latihan 1 - Soal 5
// Class Warna dengan constant constructor

class Warna {
  final int red;
  final int green;
  final int blue;

  // Constant constructor
  const Warna(this.red, this.green, this.blue);

  void display() {
    print("Red: $red, Green: $green, Blue: $blue");
  }
}

void main() {
  const Warna merah = Warna(255, 0, 0);
  const Warna hijau = Warna(0, 255, 0);
  const Warna biru = Warna(0, 0, 255);
  const Warna putih = Warna(255, 255, 255);

  print("Warna Merah  -> ");
  merah.display();

  print("Warna Hijau  -> ");
  hijau.display();

  print("Warna Biru   -> ");
  biru.display();

  print("Warna Putih  -> ");
  putih.display();

  // Membuktikan constant constructor memiliki hashCode yang sama
  const Warna merah2 = Warna(255, 0, 0);
  print("\nHashCode merah  : ${merah.hashCode}");
  print("HashCode merah2 : ${merah2.hashCode}");
  print("Sama? ${merah == merah2}");
}
