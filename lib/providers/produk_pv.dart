import 'package:flutter/material.dart';
import 'produk.dart';

class ProdukPV with ChangeNotifier {
  List<Produk> _items = [
    Produk(
        id: '1',
        nama: 'Japan',
        deskripsi:
            'Magni dolorum itaque ut qui excepturi qui a autem ad. Rerum rerum quas non laudantium non aut est corrupti libero. Numquam ipsa aut occaecati dolorem repudiandae repellat rerum. Assumenda est fuga et ipsam maiores veniam. Animi perferendis fugit et. Et eaque quod quas magni aspernatur saepe esse est.',
        harga: 30000,
        gambarUrl:
            'https://cdn.pixabay.com/photo/2016/11/14/03/43/kimono-1822520_960_720.jpg'),
    Produk(
        id: '2',
        nama: 'Sun Set',
        deskripsi: 'Deserunt ut hic et amet.',
        harga: 30000,
        gambarUrl:
            'https://cdn.pixabay.com/photo/2014/12/16/22/25/woman-570883_960_720.jpg'),
    Produk(
        id: '3',
        nama: 'Tree',
        deskripsi:
            'Aliquid minima voluptatem et aspernatur quaerat et quasi et. Earum et qui et. Unde ut in. Voluptatem fuga voluptatem accusantium. Commodi assumenda itaque sunt. Consequatur similique nam dolores quibusdam quisquam.',
        harga: 92400,
        gambarUrl:
            'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg'),
    Produk(
        id: '4',
        nama: 'Sakura',
        deskripsi:
            'Aliquid minima voluptatem et aspernatur quaerat et quasi et. Earum et qui et. Unde ut in. Voluptatem fuga voluptatem accusantium. Commodi assumenda itaque sunt. Consequatur similique nam dolores quibusdam quisquam.',
        harga: 92400,
        gambarUrl:
            'https://cdn.pixabay.com/photo/2014/04/14/20/11/pink-324175_960_720.jpg'),
    Produk(
        id: '5',
        nama: 'Bunga',
        deskripsi:
            'Aliquid minima voluptatem et aspernatur quaerat et quasi et. Earum et qui et. Unde ut in. Voluptatem fuga voluptatem accusantium. Commodi assumenda itaque sunt. Consequatur similique nam dolores quibusdam quisquam.',
        harga: 92400,
        gambarUrl:
            'https://cdn.pixabay.com/photo/2012/03/01/00/55/flowers-19830_960_720.jpg'),
    Produk(
        id: '6',
        nama: 'Lili',
        deskripsi:
            'Aliquid minima voluptatem et aspernatur quaerat et quasi et. Earum et qui et. Unde ut in. Voluptatem fuga voluptatem accusantium. Commodi assumenda itaque sunt. Consequatur similique nam dolores quibusdam quisquam.',
        harga: 92400,
        gambarUrl:
            'https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_960_720.jpg'),
  ];
//  var _tampilHanyaProdukFavorit = false;

  List<Produk> get items {
    // if (_tampilHanyaProdukFavorit) {
    //   return _items.where((ProdukPV) => ProdukPV.isFavorite).toList();
    // }
    return [..._items];
  }

  Produk findById(String id) {
    return _items.firstWhere((Produk) => Produk.id == id);
  }

  // void tampilfavorit() {
  //   _tampilHanyaProdukFavorit = true;
  //   notifyListeners();
  // }

  // void tampilall() {
  //   _tampilHanyaProdukFavorit = false;
  //   notifyListeners();
  // }

  List<Produk> get produkfavorit {
    return _items.where((Produk) => Produk.isFavorite == true).toList();
  }

  void tambahProduk() {
    notifyListeners();
  }
}
