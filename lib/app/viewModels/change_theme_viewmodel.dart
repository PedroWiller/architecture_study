import 'package:architecture/app/interfaces/local_storage_interface.dart';
import 'package:architecture/app/models/appconfig_model.dart';

class ChangeThemeViewModel {
  final ILocalStorage storage;

  ChangeThemeViewModel({this.storage});

  final AppConfigModel config = AppConfigModel();

  Future intit() async {
    await storage.get('isDark').then((value) {
      if (value != null) config.themeSwitch.value = value;
    });
  }

  changeTheme(bool value) {
    config.themeSwitch.value = value;
    storage.put('isDark', value);
  }
}
