import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';
import 'catalog_screen.dart';

class SuccessScreen extends StatelessWidget {
  final String name;
  final String address;
  final int itemCount;
  final double total;

  const SuccessScreen({
    super.key,
    required this.name,
    required this.address,
    required this.itemCount,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.check_circle, color: Colors.green, size: 80),
              const SizedBox(height: 20),
              const Text(
                'Заказ принят!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text('Спасибо за покупку, $name!'),
              const SizedBox(height: 20),
              Text('Товаров: $itemCount'),
              Text('Сумма: ${total.toInt()} ₽'),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  context.read<CartProvider>().clearCart();
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const CatalogScreen()),
                    (route) => false,
                  );
                },
                child: const Text('В начало'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
