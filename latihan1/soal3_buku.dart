// Tugas Latihan 1 - Soal 3
// Class Buku dengan parameterized constructor

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
  Buku buku1 = Buku("Laskar Pelangi", "Andrea Hirata");
  buku1.display();
}
