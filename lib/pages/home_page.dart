import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/item_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      Item(
        name: "Laptop",
        image: "assets/Leptop.png",
        price: 15000000,
        stock: 5,
        rating: 4.5,
      ),
      Item(
        name: "Phone",
        image: "assets/hp.PNG",
        price: 7000000,
        stock: 10,
        rating: 4.8,
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Aplikasi Belanja")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ItemCard(item: items[index]);
          },
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.blueGrey.shade50,
        padding: const EdgeInsets.all(12),
        child: const Text(
          "Nama: LILIS THALISA| NIM: 362458302020",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}