// Tugas Latihan 2 - Soal 2
// Encapsulation: class RekeningBank dengan saldo private

class RekeningBank {
  // Properti private
  double _saldo;

  RekeningBank(this._saldo);

  // Getter untuk saldo
  double get saldo => _saldo;

  // Metode setor
  void setor(double jumlah) {
    if (jumlah <= 0) {
      print("Jumlah setor harus lebih dari 0.");
      return;
    }
    _saldo += jumlah;
    print("Setor Rp$jumlah berhasil. Saldo sekarang: Rp$_saldo");
  }

  // Metode tarik
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
    print("Tarik Rp$jumlah berhasil. Saldo sekarang: Rp$_saldo");
  }
}

void main() {
  RekeningBank rekening = RekeningBank(500000);
  print("Saldo awal: Rp${rekening.saldo}");

  rekening.setor(200000);
  rekening.tarik(100000);
  rekening.tarik(700000); // gagal, saldo tidak cukup
}
