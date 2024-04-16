class PagePath {
  /// Unauthenticated Routes
  static const String slash = '/';
  static const String splash = '/splash';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String registerEmailOtp = 'registerEmailOtp';
  static const String forgotPassword = 'forgotPassword';
  static const String forgotPassOtp = 'forgotPassOtp';
  static const String createNewPassword = 'createNewPassword';
  static const String onboarding = '/onboarding';
  static const String privacyAndPolicy = '/privacyAndPolicy';

  ///======= Authenticated Routes ===========

  /// HOME
  static const String homeScreen = '/homeScreen';
  static const String findDevice = 'findDevice';
  static const String findOnMap = 'findOnMap';
  static const String registerCommand = 'registerCommand';


  static const String profile = 'profile';
  static const String profileEdit = 'edit';

  /// Record Command
  static const String registerVoice = '/registerVoice';

  /// Configure Devices Screen
  static const String configureDevice = '/configureDevice';
  static const String removeDevice = 'removeDevice';
  static const String changeCommand = 'changeCommand';
  static const String volumeSettings = 'volumeSettings';
  static const String addDevice = 'addDevice';
  static const String termsConditions = 'termsConditions';
  static const String manageDevice = 'renameDevice';

  /// Settings Screen
  static const String settings = '/settings';
  static const String notifications = 'notifications';
  static const String changePassword = 'changePassword';


}

extension ContextExtensionss on String {
  String get toRoute => '/$this';
}
