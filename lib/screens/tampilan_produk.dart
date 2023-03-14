import 'package:flutter/material.dart';
import '../widgets/produk_grid.dart';

class TampilanProduk extends StatefulWidget {
  @override
  State<TampilanProduk> createState() => _TampilanProdukState();
}

class _TampilanProdukState extends State<TampilanProduk> {
  var _tampilhanyafavorit = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CAMP PROGRAMMERS'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (OpsiFilter vterpilih) {
              setState(() {
                if (vterpilih == OpsiFilter.Favorit) {
                  _tampilhanyafavorit = true;
                } else {
                  _tampilhanyafavorit = false;
                }
              });
            },
            icon: Icon(
              Icons.more_vert,
            ),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Hanya Favorit'),
                value: OpsiFilter.Favorit,
              ),
              PopupMenuItem(
                child: Text('Tampilkan Semua'),
                value: OpsiFilter.Semua,
              ),
            ],
          )
        ],
      ),
      body: ProdukGrid(_tampilhanyafavorit),
    );
  }
}

enum OpsiFilter {
  Favorit,
  Semua,
}
