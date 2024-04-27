import 'package:flutter/material.dart';
import 'buku.dart';
import 'anggota.dart';

class Perpustakaan {
  List<Buku> daftarBuku = [];
  List<Anggota> daftarAnggota = [];

  void tambahBuku(Buku buku) {
    daftarBuku.add(buku);
  }

  void hapusBuku(Buku buku) {
    daftarBuku.remove(buku);
  }

  void tambahAnggota(Anggota anggota) {
    daftarAnggota.add(anggota);
  }

  void hapusAnggota(Anggota anggota) {
    daftarAnggota.remove(anggota);
  }

  Widget tampilkanDaftarBuku() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Daftar Buku:",
            style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8.0),
        Column(
          children:
              daftarBuku.map((buku) => buku.tampilkanInformasi()).toList(),
        ),
      ],
    );
  }

  Widget tampilkanDaftarAnggota() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Daftar Anggota:",
            style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8.0),
        Column(
          children: daftarAnggota.map((anggota) {
            return Column(
              children: [
                anggota.tampilkanInformasi(),
                anggota.tampilkanBukuDipinjam(),
                const SizedBox(height: 16.0),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}
