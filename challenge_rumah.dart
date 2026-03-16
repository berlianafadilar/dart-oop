// Challenge: Class Rumah
// Properti: nama, alamat, jumlahKamar
// Method: display()

class Rumah {
  String? nama;
  String? alamat;
  int? jumlahKamar;

  void display() {
    print("Nama Rumah    : $nama");
    print("Alamat        : $alamat");
    print("Jumlah Kamar  : $jumlahKamar");
  }
}

void main() {
  Rumah rumah = Rumah();
  rumah.nama = "Rumah Indah";
  rumah.alamat = "Jl. Merdeka No. 10, Jepara";
  rumah.jumlahKamar = 4;

  rumah.display();
}
