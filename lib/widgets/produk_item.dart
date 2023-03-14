import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tokoku/providers/produk.dart';
import 'package:tokoku/screens/produk_detail.dart';

class ProdukItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final produk = Provider.of<Produk>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          leading: Consumer<Produk>(
            builder: (ctx, produk, child) => IconButton(
              icon: Icon(
                  produk.isFavorite ? Icons.favorite : Icons.favorite_border),
              color: Theme.of(context).primaryColor,
              onPressed: () {
                produk.statusToggleFavorite();
              },
            ),
          ),
          title: Text(
            produk.nama,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: const Icon(Icons.shopping_cart),
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed(ProdukDetail.routeName, arguments: produk.id);
          },
          child: Image.network(
            produk.gambarUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
