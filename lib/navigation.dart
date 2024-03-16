import 'package:ecss_hack_24/pages/upload_photo_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: UploadPhotoPage.path,
      builder: (context, state) => const UploadPhotoPage(),
    ),
  ],
  initialLocation: UploadPhotoPage.path,
  // initialLocation: AppProvider.instance.onboardingComplete
  //     ? HomePage.path
  //     : OnboardingPage.path,
);
