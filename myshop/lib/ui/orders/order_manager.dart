import 'package:flutter/cupertino.dart';

import '../../models/cart_item.dart';
import '../../models/order_item.dart';

class OrdersManager with ChangeNotifier {
  final List<OrderItem> _orders = [
    OrderItem(
      id: '01',
      amount: 35900,
      products: [
        CartItem(
          id: 'c1',
          title: 'Nike Air Max Excee',
          price: 35900,
          quantity: 1,
        )
      ],
      dateTime: DateTime.now(),
    )
  ];

  int get orderCount {
    return _orders.length;
  }

  List<OrderItem> get orders {
    return [..._orders];
  }

  void addOrder(List<CartItem> cartProducts, double total) async {
    _orders.insert(
      0,
      OrderItem(
        id: '${DateTime.now().toIso8601String()}\VND',
        amount: total,
        products: cartProducts,
        dateTime: DateTime.now(),
      ),
    );
    notifyListeners();
  }
}
