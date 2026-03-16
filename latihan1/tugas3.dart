// Tugas 3: Class Buku dengan parameterized constructor
// Konsep: Parameterized Constructor

class Buku {
  String judul;
  String pengarang;

  // Parameterized constructor
  Buku(this.judul, this.pengarang);

  void display() {
    print("Judul     : $judul");
    print("Pengarang : $pengarang");
  }
}

void main() {
  Buku buku = Buku("Laskar Pelangi", "Andrea Hirata");
  buku.display();
}
