import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_card.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      Product(
        id: '1',
        name: 'Wireless Headphones',
        price: 99.99,
        imageUrl: 'https://picsum.photos/200',
      ),
      Product(
        id: '2',
        name: 'Smart Watch',
        price: 199.99,
        imageUrl: 'https://picsum.photos/201',
      ),
      Product(
        id: '3',
        name: 'Laptop',
        price: 999.99,
        imageUrl: 'https://picsum.photos/202',
      ),
    ];

    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) => ProductCard(product: products[index]),
    );
  }
}