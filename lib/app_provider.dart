import 'package:ecss_hack_24/core.dart';
import 'package:logging/logging.dart';

class AppProvider extends ChangeNotifier {
  AppProvider._();
  static final instance = AppProvider._();

  final log = Logger('AppProvider');
  // final notificationService = NotificationService.instance;

  Future<void> init() async {
    // _reminderTime = await db.getReminderTime();
    // _onboardingComplete = await db.getOnboardingComplete();
  }

  // TimeOfDay get reminderTime => _reminderTime;
  // late TimeOfDay _reminderTime;

  // Future<void> setReminderTime(TimeOfDay time) async {
  //   await db.setReminderTime(time);
  //   await notificationService.reshceduleAll();
  //   _reminderTime = time;
  //   notifyListeners();
  // }

  // bool get onboardingComplete => _onboardingComplete;
  // late bool _onboardingComplete;

  // Future<void> completeOnboarding() async {
  //   await db.setOnboardingComplete();
  //   _onboardingComplete = true;
  //   notifyListeners();
  // }
}
