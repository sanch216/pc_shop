import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';
import 'success_screen.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  // Убрали GlobalKey<FormState> и валидацию
  final _nameCtrl = TextEditingController();
  final _phoneCtrl = TextEditingController();
  final _cityCtrl = TextEditingController();
  final _streetCtrl = TextEditingController();
  final _postalCtrl = TextEditingController();

  void _submit() {
    // Просто переходим на экран успеха, никакой проверки полей
    final cart = context.read<CartProvider>();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => SuccessScreen(
          name: _nameCtrl.text,
          address: '${_cityCtrl.text}, ${_streetCtrl.text}',
          itemCount: cart.itemCount,
          total: cart.totalPrice,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Оформление')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('Ваши данные',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          TextField(
            controller: _nameCtrl,
            decoration: const InputDecoration(labelText: 'Имя'),
          ),
          TextField(
            controller: _phoneCtrl,
            decoration: const InputDecoration(labelText: 'Телефон'),
          ),
          const SizedBox(height: 20),
          const Text('Адрес доставки',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          TextField(
            controller: _cityCtrl,
            decoration: const InputDecoration(labelText: 'Город'),
          ),
          TextField(
            controller: _streetCtrl,
            decoration: const InputDecoration(labelText: 'Улица'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: _submit,
            child: const Text('Заказать'),
          ),
        ],
      ),
    );
  }
}
