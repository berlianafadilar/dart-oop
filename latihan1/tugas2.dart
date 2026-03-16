// Tugas 2: Class Mahasiswa dengan nilai default pada properti
// Konsep: Default Constructor, Named Parameter dengan Default Value

class Mahasiswa {
  String nama;
  String nim;

  Mahasiswa({this.nama = "Mahasiswa Baru", this.nim = "0000000000"});

  void display() {
    print("Nama : $nama");
    print("NIM  : $nim");
  }
}

void main() {
  // Membuat objek tanpa memberikan nilai tambahan
  Mahasiswa mhs = Mahasiswa();
  mhs.display();
}
