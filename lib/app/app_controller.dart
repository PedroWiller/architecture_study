import 'package:architecture/app/services/shared_local_storage_service.dart';
import 'package:architecture/app/viewModels/change_theme_viewmodel.dart';

class AppController {
  static final AppController instance = AppController._();

  AppController._() {
    changeThemeViewModel.intit();
  }

  final ChangeThemeViewModel changeThemeViewModel = ChangeThemeViewModel(storage: SharedLocalStorageService());
  bool get isDark => changeThemeViewModel.config.themeSwitch.value;
}
