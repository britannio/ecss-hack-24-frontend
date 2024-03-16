import 'dart:convert';

import 'package:ecss_hack_24/core.dart';
import 'package:ecss_hack_24/models/full_product.dart';
import 'package:ecss_hack_24/models/product.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logging/logging.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:uuid/uuid.dart';

const API_URL = kDebugMode && kIsWeb
    ? 'http://localhost:64476'
    : 'https://ecss-hack-24-backend.onrender.com';

class AppProvider extends ChangeNotifier {
  AppProvider._();
  static final instance = AppProvider._();

  final String sessionID = const Uuid().v4();
  final dio = Dio();

  bool _portraitUploaded = false;
  bool get portraitUploaded => _portraitUploaded;
  set portraitUploaded(bool value) {
    _portraitUploaded = value;
    notifyListeners();
  }

  // XFile? _portrait;
  // XFile? get portrait => _portrait;
  // set portrait(XFile? value) {
  // _portrait = value;
  // notifyListeners();
  // }

  // Future<void> setPortrait(XFile? value) async {
  //   _portrait = value;
  //   _portraitBytes = await value?.readAsBytes();
  //   notifyListeners();
  // }

  Uint8List? _portraitBytes;
  Uint8List? get portraitBytes => _portraitBytes;
  set portraitBytes(Uint8List? value) {
    _portraitBytes = value;
    notifyListeners();
  }

  String _query = 'red hat';
  set query(String value) {
    _query = value;
    notifyListeners();
  }

  List<FullProduct> _products = [];
  List<FullProduct> get products => _products;

  final log = Logger('AppProvider');
  // final notificationService = NotificationService.instance;

  Future<void> init() async {
    // _reminderTime = await db.getReminderTime();
    // _onboardingComplete = await db.getOnboardingComplete();
  }

  Future<bool> uploadImage() async {
    // assume running on web
    print('attempting to upload image');
    await _uploadImageToServer(portraitBytes!);
    print('seems to work :)');
    return true;
  }

  Future<List<FullProduct>> getProducts() async {
    // endpoint: /get_products/:sessionID?product_query=<query>
    // Make uri with encoded query

    var uri = Uri.parse(
      '$API_URL/get_products/$sessionID?product_query=$_query',
    );
    print(uri);
    // Make request
    final response = await http.get(uri);
    if (response.statusCode != 200) {
      log.severe('Failed to get products');
      return [];
    }

    // Parse response into JSON (top level 'products' key)
    final body = response.body;
    final bodyJson = jsonDecode(body) as Map;
    final products = (bodyJson['products'] as List)
        .cast<Map<String, dynamic>>()
        .map((x) {
          print(x);
          return x;
        })
        .map(FullProduct.fromJson)
        .toList();

    _products = products;
    return products;
  }

  Future<void> _uploadImageToServer(Uint8List fileBytes) async {
    final endpoint = '$API_URL/upload_portrait/$sessionID';
    final formData = FormData.fromMap(
      {
        'portrait':
            MultipartFile.fromBytes(fileBytes, filename: 'portrait.jpg'),
      },
    );
    try {
      final response = await dio.post(endpoint, data: formData);
      log.info('Image uploaded successfully');
      log.info(response.data);
    } catch (e, s) {
      log.severe('Image upload failed', e, s);
    }
  }
}
