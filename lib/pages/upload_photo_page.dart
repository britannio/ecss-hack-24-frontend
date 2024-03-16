import 'package:ecss_hack_24/core.dart';
import 'package:ecss_hack_24/pages/describe_item_page.dart';
import 'package:flextras/flextras.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class UploadPhotoPage extends StatefulWidget {
  static const path = '/upload-photo';
  const UploadPhotoPage({super.key});

  @override
  State<UploadPhotoPage> createState() => _UploadPhotoPageState();
}

class _UploadPhotoPageState extends State<UploadPhotoPage> {
  Future<void> uploadImage() async {
    final provider = AppProvider.instance;
    if (provider.portraitBytes == null) return;
    final success = await provider.uploadImage();
    print('success: $success');
    if (!success) return;
    print('$mounted: $mounted');
    if (!mounted) return;
    context.push(DescribeItemPage.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PaddedColumn(
          padding: const EdgeInsets.all(24),
          children: [
            const Expanded(flex: 12, child: UploadImageCard()),
            const Spacer(),
            ElevatedButton(
              onPressed: () => uploadImage(),
              child: const Text('Upload'),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class UploadImageCard extends StatelessWidget {
  const UploadImageCard({super.key});

  Future<void> setImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;
    final provider = AppProvider.instance;
    final bytes = await image.readAsBytes();
    provider.portraitBytes = bytes;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => setImage(),
        child: Stack(
          fit: StackFit.expand,
          children: [
            const OriginalPortrait(),
            Center(
              child: Icon(
                Icons.add_a_photo,
                size: 100,
                color: Colors.grey.shade900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
