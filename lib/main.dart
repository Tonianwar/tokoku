import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tokoku/providers/produk_pv.dart';
import 'package:tokoku/screens/produk_detail.dart';
import './screens/tampilan_produk.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => ProdukPV(),
      child: MaterialApp(
        title: 'TOKO KU',
        theme: ThemeData(
          primaryColor: Colors.deepPurple[100],
          primaryColorDark: Colors.deepOrange,
          primarySwatch: Colors.lightBlue,
          fontFamily: 'Lato',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: TampilanProduk(),
        routes: {
          ProdukDetail.routeName: (ctx) => ProdukDetail(),
        },
      ),
    );
  }
}
