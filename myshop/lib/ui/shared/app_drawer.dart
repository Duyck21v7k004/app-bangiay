import 'package:flutter/material.dart';
import 'package:myshop/models/product.dart';
import 'package:myshop/ui/products/products_manager.dart';
import 'package:myshop/ui/products/user_product_list.dart';

import '../orders/orders_screen.dart';
import '../products/user_products_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: <Widget>[
        AppBar(
          title: const Text('Menu'),
          automaticallyImplyLeading: false,
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Trang Chủ'),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/');
          },
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.payment),
          title: const Text('Orders'),
          onTap: () {
            Navigator.of(context).pushReplacementNamed(OrdersScreen.routeName);
          },
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.edit),
          title: const Text('Tùy chọn'),
          onTap: () {
            Navigator.of(context)
                .pushReplacementNamed(UserProductsScreen.routeName);
          },
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.search),
          title: const Text('Tìm Kiếm'),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('');
          },
        ),
      ]),
    );
  }
}
