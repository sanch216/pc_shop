import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/product.dart';
import '../providers/cart_provider.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartProvider>();
    final inCart = cart.contains(product.id);

    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey[200],
              child: Center(
                child: product.imagePath != null
                    ? Image.asset(product.imagePath!)
                    : Text(product.emoji,
                        style: const TextStyle(fontSize: 100)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '${product.price.toInt()} ₽',
                    style: const TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                  const SizedBox(height: 20),
                  const Text('Описание:',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  Text(product.description),
                  const SizedBox(height: 20),
                  const Text('Характеристики:',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  ...product.specs.entries.map((e) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(e.key),
                            Text(e.value,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: inCart ? Colors.red : Colors.blue,
            foregroundColor: Colors.white,
          ),
          onPressed: () {
            if (inCart) {
              cart.removeItem(product.id);
            } else {
              cart.addItem(product);
            }
          },
          child: Text(inCart ? 'Удалить из корзины' : 'Добавить в корзину'),
        ),
      ),
    );
  }
}
