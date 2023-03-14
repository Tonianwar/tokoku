import 'package:flutter/material.dart';

class Produk with ChangeNotifier {
  final String id;
  final String nama;
  final String deskripsi;
  final double harga;
  final String gambarUrl;
  bool isFavorite;

  Produk({
    required this.id,
    required this.nama,
    required this.deskripsi,
    required this.harga,
    required this.gambarUrl,
    this.isFavorite = false,
  });

  void statusToggleFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
