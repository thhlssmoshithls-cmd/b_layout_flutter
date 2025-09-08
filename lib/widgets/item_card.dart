import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemCard extends StatelessWidget {
  final Item item;

  const ItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/item',
          arguments: item, // kirim data ke ItemPage
        );
      },
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(
                  item.image,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 8),
              Text(item.name,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              Text("Rp ${item.price}"),
              Text("Stok: ${item.stock}"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.star, color: Colors.orange, size: 16),
                  Text(item.rating.toString()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}