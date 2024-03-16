import 'package:ecss_hack_24/app_provider.dart';
import 'package:ecss_hack_24/main.dart';
import 'package:ecss_hack_24/models/full_product.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ListProductsPage extends StatelessWidget {
  static const path = '/list-products';
  const ListProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<AppProvider>();
    final products = provider.products;
    if (products.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Personalised Products'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ProductCard(product: product);
        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final FullProduct product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () => launchUrl(Uri.parse(product.product.url)),
          child: PaddedColumn(
            padding: const EdgeInsets.all(8),
            children: [
              const SizedBox(height: 24),
              SizedBox(
                height: 120,
                child: Row(
                  children: [
                    // Product Image
                    Expanded(
                      child: WrapImage(
                        child: Image.network(
                          cors(product.product.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(),
                    // New Image
                    Expanded(
                      child: WrapImage(
                        child: Image.network(
                          API_URL + product.portrait_url,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text(product.product.name),
                subtitle: Text(product.description),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  product.product.price,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WrapImage extends StatelessWidget {
  const WrapImage({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AspectRatio(
        aspectRatio: 9 / 12,
        child: Material(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          clipBehavior: Clip.antiAlias,
          child: child,
        ),
      ),
    );
  }
}
