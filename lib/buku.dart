import 'package:flutter/material.dart';

class Buku {
  String judul;
  String pengarang;
  int tahunTerbit;
  int jumlahHalaman;

  Buku(this.judul, this.pengarang, this.tahunTerbit, this.jumlahHalaman);

  Widget tampilkanInformasi() {
    return ListTile(
      title: Text("Judul: $judul"),
      subtitle: Text(
          "Pengarang: $pengarang\nTahun Terbit: $tahunTerbit\nJumlah Halaman: $jumlahHalaman"),
    );
  }
}
