import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testabd/main.dart';

class TokenData {
  final String access;
  final String refresh;

  TokenData({this.access = '', this.refresh = ''});

  factory TokenData.fromJson(String json) {
    final data = jsonDecode(json);
    return TokenData(access: data['access'], refresh: data['refresh']);
  }

  String toJson() {
    return '{"access": "$access", "refresh": "$refresh"}';
  }
}

abstract class TokenService {
  Future<bool> saveToken(TokenData data);
  Future<TokenData?> getToken();
  Future<bool> clear();
}

@Singleton(as: TokenService)
class SharedPrefsTokenService implements TokenService {
  static const _key = 'token';

  final SharedPreferences _prefs;

  SharedPrefsTokenService(this._prefs);

  @override
  Future<bool> saveToken(TokenData data) async {
    try {
      return await _prefs.setString(_key, data.toJson());
    } catch (e, stackTrace) {
      logger.d(e.toString(), stackTrace: stackTrace);
      return false;
    }
  }

  @override
  Future<TokenData?> getToken() async {
    final token = _prefs.getString(_key);
    if (token != null && token.isNotEmpty) {
      return TokenData.fromJson(token);
    }
    return null;
  }

  @override
  Future<bool> clear() {
    return _prefs.remove(_key);
  }
}
