import 'package:ecss_hack_24/app_provider.dart';
import 'package:ecss_hack_24/pages/list_products_page.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class DescribeItemPage extends StatelessWidget {
  static const path = '/describe-item';
  const DescribeItemPage({super.key});

  void getProducts(BuildContext context) async {
    final provider = context.read<AppProvider>();
    await provider.getProducts();
    context.push(ListProductsPage.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: SafeArea(
        child: PaddedColumn(
          padding: const EdgeInsets.all(24),
          children: [
            const Expanded(
              flex: 8,
              child: OriginalPortrait(),
            ),
            const Spacer(flex: 2),
            TextField(
              decoration: const InputDecoration(
                labelText: 'What are you looking for?',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                final provider = context.read<AppProvider>();
                provider.query = value;
              },
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () => getProducts(context),
              child: const Text('Get Products'),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}

class OriginalPortrait extends StatelessWidget {
  const OriginalPortrait({super.key});
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<AppProvider>();
    final bytes = provider.portraitBytes;
    if (bytes == null) return const SizedBox();
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      clipBehavior: Clip.antiAlias,
      child: Image.memory(
        bytes,
        fit: BoxFit.cover,
      ),
    );
    // if (kIsWeb) return Image.network(path, fit: BoxFit.cover);
    // else return Image.file(provider.portrait.)
    // return Image.network(
    //   path,
    //   fit: BoxFit.cover,
    // );
  }
}
