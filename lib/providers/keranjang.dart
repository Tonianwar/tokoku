import 'package:flutter/material.dart';

class ItemKeranjang {
  final String id;
  final String judul;
  final int qty;
  final double harga;
  ItemKeranjang(
      {required this.id,
      required this.judul,
      required this.qty,
      required this.harga});
}

class Keranjang with ChangeNotifier {
  late Map<String, ItemKeranjang> _items;

  Map<String, ItemKeranjang> get items {
    return {..._items};
  }

  tambahItem(
    String id,
    double harga,
    String judul,
  ) {
    if (_items.containsKey(id)) {
      _items.update(
          id,
          (ItemKeranjangsaatini) => ItemKeranjang(
              id: ItemKeranjangsaatini.id,
              judul: ItemKeranjangsaatini.judul,
              qty: ItemKeranjangsaatini.qty,
              harga: ItemKeranjangsaatini.harga));
    } else {
      _items.putIfAbsent(
          id,
          () => ItemKeranjang(
              id: DateTime.now().toString(),
              judul: judul,
              qty: 1,
              harga: harga));
    }
  }
}
