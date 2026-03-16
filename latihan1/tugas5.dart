// Tugas 5: Class Warna dengan constant constructor
// Konsep: Constant Constructor

class Warna {
  final int red;
  final int green;
  final int blue;

  // Semua properti harus final untuk constant constructor
  const Warna(this.red, this.green, this.blue);

  void display() {
    print("Red: $red, Green: $green, Blue: $blue");
  }
}

void main() {
  const Warna merah = Warna(255, 0, 0);
  const Warna hijau = Warna(0, 255, 0);
  const Warna biru = Warna(0, 0, 255);

  merah.display();
  hijau.display();
  biru.display();

  // Buktikan constant constructor menghasilkan hash code yang sama
  const Warna merah2 = Warna(255, 0, 0);
  print("\nHash merah  : ${merah.hashCode}");
  print("Hash merah2 : ${merah2.hashCode}");
  print("Sama? ${merah.hashCode == merah2.hashCode}");
}
