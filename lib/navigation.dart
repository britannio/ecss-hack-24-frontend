import 'package:ecss_hack_24/pages/describe_item_page.dart';
import 'package:ecss_hack_24/pages/list_products_page.dart';
import 'package:ecss_hack_24/pages/upload_photo_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: DescribeItemPage.path,
      builder: (context, state) => const DescribeItemPage(),
    ),
    GoRoute(
      path: UploadPhotoPage.path,
      builder: (context, state) => const UploadPhotoPage(),
    ),
    GoRoute(
      path: ListProductsPage.path,
      builder: (context, state) => const ListProductsPage(),
    ),
  ],
  initialLocation: UploadPhotoPage.path,
  // initialLocation: AppProvider.instance.onboardingComplete
  //     ? HomePage.path
  //     : OnboardingPage.path,
);
