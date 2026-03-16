// Tugas 2: Encapsulation - class RekeningBank
// Konsep: Encapsulation, private property, getter/setter

class RekeningBank {
  String _namaPemilik;
  double _saldo;

  RekeningBank(this._namaPemilik, this._saldo);

  // Getter - saldo hanya bisa dibaca, tidak bisa diubah langsung dari luar
  double get saldo => _saldo;
  String get namaPemilik => _namaPemilik;

  void setor(double jumlah) {
    if (jumlah <= 0) {
      print("Jumlah setor harus lebih dari 0.");
      return;
    }
    _saldo += jumlah;
    print("Setor Rp$jumlah berhasil. Saldo: Rp$_saldo");
  }

  void tarik(double jumlah) {
    if (jumlah <= 0) {
      print("Jumlah tarik harus lebih dari 0.");
      return;
    }
    if (jumlah > _saldo) {
      print("Saldo tidak mencukupi.");
      return;
    }
    _saldo -= jumlah;
    print("Tarik Rp$jumlah berhasil. Saldo: Rp$_saldo");
  }

  void display() {
    print("Pemilik : $_namaPemilik");
    print("Saldo   : Rp$_saldo");
  }
}

void main() {
  RekeningBank rekening = RekeningBank("Berliana", 500000);
  rekening.display();
  print("");
  rekening.setor(200000);
  rekening.tarik(100000);
  rekening.tarik(1000000); // gagal, saldo tidak cukup
}
