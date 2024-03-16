import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';

class UploadPhotoPage extends StatelessWidget {
  static const path = '/upload-photo';
  const UploadPhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PaddedColumn(
        padding: const EdgeInsets.all(24),
        children: [
          const Expanded(flex: 12, child: UploadImageCard()),
          const Spacer(),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Upload'),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class UploadImageCard extends StatelessWidget {
  const UploadImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Center(
          child: Icon(
            Icons.add_a_photo,
            size: 100,
            color: Colors.grey.shade900,
          ),
        ),
      ),
    );
  }
}
