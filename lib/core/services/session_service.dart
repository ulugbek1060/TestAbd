import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testabd/main.dart';

enum SessionStatus {
  unauthenticated,
  authenticated,
  guest;

  bool get isGuest => this == SessionStatus.guest;
  bool get isAuthenticated => this == SessionStatus.authenticated;
  bool get isUnauthenticated => this == SessionStatus.unauthenticated;

  T when<T>({
    required T Function() unauthenticated,
    required T Function() authenticated,
    required T Function() guest,
  }) {
    switch (this) {
      case SessionStatus.unauthenticated:
        return unauthenticated();
      case SessionStatus.authenticated:
        return authenticated();
      case SessionStatus.guest:
        return guest();
    }
  }
}

/// Abstract contract for managing local session data
abstract class SessionService {
  Stream<SessionStatus> get sessionStream;
  SessionStatus get sessionStatus;
  Future<void> loadSession();
  Future<bool> saveSessionStatus(SessionStatus status);
  Future<bool> clear();
}

@Singleton(as: SessionService)
class SessionServiceImpl implements SessionService {
  static const _key = 'session_status';

  final SharedPreferences _prefs;

  SessionServiceImpl(this._prefs);

  final _sessionSubject = BehaviorSubject.seeded(SessionStatus.unauthenticated);

  @override
  Stream<SessionStatus> get sessionStream => _sessionSubject.stream.distinct();

  @override
  SessionStatus get sessionStatus => _sessionSubject.value;

  @override
  Future<void> loadSession() async {
    try {
      final status = SessionStatus.values.firstWhere(
            (element) => element.name == _prefs.getString(_key),
      );
      _sessionSubject.sink.add(status);
    } catch (e, stackTrace) {
      logger.d(e, stackTrace: stackTrace);
    }
  }

  @override
  Future<bool> saveSessionStatus(SessionStatus status) async {
    try {
      final result = await _prefs.setString(_key, status.name);
      if (result) _sessionSubject.sink.add(status);
      return result;
    } catch (e, stackTrace) {
      logger.d(e, stackTrace: stackTrace);
      return false;
    }
  }

  @override
  Future<bool> clear() async {
    try {
      final result = await _prefs.clear();
      if (result) _sessionSubject.sink.add(SessionStatus.unauthenticated);
      return result;
    } catch (e, stackTrace) {
      logger.d(e, stackTrace: stackTrace);
      return false;
    }
  }
}
