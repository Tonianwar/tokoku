import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:tokoku/providers/produk_pv.dart';
import 'package:tokoku/widgets/produk_item.dart';

import '../providers/produk.dart';

class ProdukGrid extends StatelessWidget {
  final bool tampilFav;
  ProdukGrid(this.tampilFav);
  @override
  Widget build(BuildContext context) {
    final dataprodukpv = Provider.of<ProdukPV>(context);
    final dataProduk =
        tampilFav ? dataprodukpv.produkfavorit : dataprodukpv.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: dataProduk.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: dataprodukpv.items[i],
        child: ProdukItem(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
