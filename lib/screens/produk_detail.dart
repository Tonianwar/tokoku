import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tokoku/providers/produk_pv.dart';

class ProdukDetail extends StatelessWidget {
  static const routeName = '/produk-detail';
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments as String;
    final produkload =
        Provider.of<ProdukPV>(context, listen: false).items.firstWhere(
              (prod) => prod.id == id,
            );
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
