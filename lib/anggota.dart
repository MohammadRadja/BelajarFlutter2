import 'package:flutter/material.dart';
import 'buku.dart';

class Anggota {
  String nama;
  int nomorAnggota;
  String alamat;
  List<Buku> bukuDipinjam = [];

  Anggota(this.nama, this.nomorAnggota, this.alamat);

  void pinjamBuku(Buku buku) {
    bukuDipinjam.add(buku);
  }

  void kembalikanBuku(Buku buku) {
    bukuDipinjam.remove(buku);
  }

  Widget tampilkanInformasi() {
    return ListTile(
      title: Text("Nama: $nama"),
      subtitle: Text("Nomor Anggota: $nomorAnggota\nAlamat: $alamat"),
      contentPadding:
          const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
    );
  }

  Widget tampilkanBukuDipinjam() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Buku yang Dipinjam:",
            style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8.0),
        Column(
          children:
              bukuDipinjam.map((buku) => buku.tampilkanInformasi()).toList(),
        ),
      ],
    );
  }
}
