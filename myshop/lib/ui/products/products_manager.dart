import 'package:flutter/foundation.dart';

import '../../models/product.dart';

class ProductsManager with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Nike Air Max Excee',
      description: 'size 40-60 ',
      price: 35900,
      imageUrl:
          'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,b_rgb:f5f5f5/4f86dbd8-8ead-41f5-99fb-7c03d84bbcc2/air-max-excee-shoes-36q48J.png',
    ),
    Product(
      id: 'p2',
      title: 'Nike Air Max 90 G NRG',
      description: 'size 40-55.',
      price: 20000,
      imageUrl:
          'https://static.nike.com/a/images/q_auto:eco/t_product_v1/f_auto/dpr_1.0/w_411,c_limit/3683a07a-aab7-48b5-af11-2e241947d635/air-max-90-g-nrg-golf-shoes-WR9pPS.png',
    ),
    Product(
      id: 'p3',
      title: 'KD15 EP',
      description: 'size 40-65',
      price: 199000,
      imageUrl:
          'https://static.nike.com/a/images/q_auto:eco/t_product_v1/f_auto/dpr_1.0/w_411,c_limit/75c9b318-fc54-4cda-a9af-1fbb63b56c70/kd15-ep-basketball-shoes-9K6BpD.png',
    ),
    Product(
      id: 'p4',
      title: 'Nike Air Zoom Pegasus 39 Shield',
      description: 'size 35-55',
      price: 30000,
      imageUrl:
          'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/f08d2d36-816b-4bfd-ae12-bc4a228bd060/air-zoom-pegasus-39-shield-weatherised-road-running-shoes-dcpVxH.png',
    ),
    Product(
      id: 'p5',
      title: 'Nike Air Force 1 Low Retro',
      description: '40-70',
      price: 49900,
      imageUrl:
          'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/208bab8d-473a-4557-a378-827ef37c1d91/air-force-1-low-retro-shoes-FPRmPs.png',
    ),
    Product(
      id: 'p6',
      title: 'Air Jordan XXXVII PF',
      description: '40-60',
      price: 39900,
      imageUrl:
          'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/a3cf1b14-5bb8-48da-ba84-e1f5156f19b2/air-jordan-xxxvii-pf-basketball-shoes-FxrCGw.png',
    ),
    Product(
      id: 'p7',
      title: 'Giày SuperStar',
      description: '40-60',
      price: 250000,
      imageUrl:
          'https://assets.adidas.com/images/w_276,h_276,f_auto,q_auto,fl_lossy,c_fill,g_auto/7ed0855435194229a525aad6009a0497_9366/EG4958_01_standard.jpg',
    ),
    Product(
      id: 'p8',
      title: 'GIÀY GRAND COURT CLOUDFOAM LIFESTYLE COURT COMFORT',
      description: '40-60',
      price: 270000,
      imageUrl:
          'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/4896bd57f0894845b5c0ae8300eec549_9366/Giay_Grand_Court_Cloudfoam_Lifestyle_Court_Comfort_trang_GW9195_01_standard.jpg',
    ),
    Product(
      id: 'p9',
      title: 'CAMPUS 80S SOUTH PARK TOWELIE',
      description: '40-60',
      price: 250000,
      imageUrl:
          'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/5c07accb9bc1402295e7ac8300fb78dd_9366/CAMPUS_80S_SOUTH_PARK_TOWELIE_Mau_tim_GZ9177_01_standard.jpg',
    ),
    Product(
      id: 'p10',
      title: 'Giày Sneaker Nam H.ST.20 KIT 2',
      description: '40-60',
      price: 400000,
      imageUrl:
          'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_350,h_350/global/194095/07/sv01/fnd/PNA/fmt/png/H.ST.20-KIT-2-Mens-Sneakers',
    ),
    Product(
      id: 'p11',
      title: 'MB.02 Giày bóng rổ Phenom',
      description: '40-60',
      price: 850000,
      imageUrl:
          'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_1050,h_1050/global/377644/01/sv01/fnd/PNA/fmt/png/MB.02-Phenom-Basketball-Shoes',
    ),
    Product(
      id: 'p12',
      title: 'Giày thể thao da cỡ trung RS-X',
      description: '40-60',
      price: 850000,
      imageUrl:
          'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_1050,h_1050/global/389211/04/sv01/fnd/PNA/fmt/png/RS-X-Mid-Leather-Sneakers',
    ),
    Product(
      id: 'p13',
      title: 'Giày chạy bộ nam Electrify Nitro',
      description: '40-60',
      price: 750000,
      imageUrl:
          'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_1050,h_1050/global/195173/12/sv01/fnd/PNA/fmt/png/Electrify-Nitro-Mens-Running-Shoes',
    ),
    Product(
      id: 'p14',
      title: 'Giày thể thao PUMA NYC RS-Connect',
      description: '40-60',
      price: 700000,
      imageUrl:
          'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_1050,h_1050/global/383605/01/sv01/fnd/PNA/fmt/png/PUMA-NYC-RS-Connect-Sneakers',
    ),
  ];

  void addProduct(Product product) {
    _items.add(
      product.copyWith(
        id: 'p${DateTime.now().toIso8601String()}',
      ),
    );
    notifyListeners();
  }

  void updateProduct(Product product) {
    final index = _items.indexWhere((item) => item.id == product.id);
    if (index >= 0) {
      _items[index] = product;
      notifyListeners();
    }
  }

  void toggleFavoriteStatus(Product product) {
    final savedStatus = product.isFavorite;
    product.isFavorite = !savedStatus;
  }

  void deleteProduct(String id) {
    final index = _items.indexWhere((item) => item.id == id);
    _items.removeAt(index);
    notifyListeners();
  }

  int get itemCount {
    return _items.length;
  }

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((item) => item.isFavorite).toList();
  }

  Product? findById(String id) {
    try {
      return _items.firstWhere((item) => item.id == id);
    } catch (error) {
      return null;
    }
  }
}
