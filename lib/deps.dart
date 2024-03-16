import 'package:ecss_hack_24/app_provider.dart';
import 'package:logging/logging.dart';

Future<void> setupDeps() async {
  await _isolatedFn(
    () => AppProvider.instance.init(),
    'AppProvider',
  );
}

Future<void> _isolatedFn(Future<void> Function() fn, String label) async {
  try {
    await fn();
  } catch (exception, stackTrace) {
    final log = Logger('setup');
    log.severe('Failed to run function: $label', exception, stackTrace);
  }
}
