import 'package:flutter/material.dart';
import 'buku.dart';
import 'anggota.dart';
import 'perpustakaan.dart';

void main() {
  // Inisialisasi beberapa buku
  Buku buku1 = Buku("Dart Programming", "John Doe", 2022, 300);
  Buku buku2 = Buku("OOP Concepts", "Jane Smith", 2020, 250);

  // Inisialisasi beberapa anggota
  Anggota anggota1 = Anggota("Alice", 001, "Jl. ABC No. 123");
  Anggota anggota2 = Anggota("Bob", 002, "Jl. XYZ No. 456");

  // Inisialisasi perpustakaan
  Perpustakaan perpustakaan = Perpustakaan();

  // Tambahkan buku dan anggota ke perpustakaan
  perpustakaan.tambahBuku(buku1);
  perpustakaan.tambahBuku(buku2);
  perpustakaan.tambahAnggota(anggota1);
  perpustakaan.tambahAnggota(anggota2);

  // Pinjam buku oleh anggota
  anggota1.pinjamBuku(buku1);
  anggota2.pinjamBuku(buku2);

  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Perpustakaan')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              perpustakaan.tampilkanDaftarBuku(),
              const SizedBox(height: 16.0),
              perpustakaan.tampilkanDaftarAnggota(),
            ],
          ),
        ),
      ),
    ),
  );
}
