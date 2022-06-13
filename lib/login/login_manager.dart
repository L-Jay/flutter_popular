import 'package:flutter_popular/login/user_info_model.dart';

class LoginManager {
  static UserInfoModel? userInfoModel;

  static bool get isLogin {
    return userInfoModel != null;
  }

  static logout() {
    userInfoModel = null;
  }
}