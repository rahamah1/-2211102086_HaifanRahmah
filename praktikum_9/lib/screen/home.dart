import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/cart.dart';
import '../model/item.dart';
import 'carts.dart';
import 'package:intl/intl.dart';

String formatCurrency(double amount) {
  return NumberFormat.currency(
    locale: 'id_ID',
    symbol: 'Rp ',
    decimalDigits: 2,
  ).format(amount);
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Item> availableItems = [
    Item(id: 1, name: "Beras", price: 150000),
    Item(id: 2, name: "Gula", price: 25000),
    Item(id: 3, name: "Tepung", price: 50000),
    Item(id: 4, name: "Bumbu dapur", price: 150000),
    Item(id: 5, name: "Minyak", price: 150000),
    Item(id: 6, name: "Garam", price: 10000),
    Item(id: 7, name: "Mie Instan", price: 12000),
    Item(id: 8, name: "Kopi", price: 20000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Woochetong Mart"),
        actions: [
          Consumer<CartModel>(
            builder:
                (context, cart, child) => Stack(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.shopping_cart),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CartScreen(),
                          ),
                        );
                      },
                    ),
                    if (cart.items.isNotEmpty)
                      Positioned(
                        right: 8,
                        top: 8,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.red,
                          child: Text(
                            '${cart.items.length}',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: availableItems.length,
        itemBuilder: (context, index) {
          final item = availableItems[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              title: Text(item.name),
              subtitle: Text(formatCurrency(item.price)),
              trailing: ElevatedButton(
                onPressed: () {
                  Provider.of<CartModel>(context, listen: false).add(item);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        '${item.name} berhasil ditambahkan ke keranjang!',
                      ),
                      duration: const Duration(seconds: 2),
                      action: SnackBarAction(
                        label: 'Lihat',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CartScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
                child: const Text("Tambah"),
              ),
            ),
          );
        },
      ),
    );
  }
}
