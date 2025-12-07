import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/core/errors/app_exception.dart';
import 'package:testabd/core/services/session_service.dart';
import 'package:testabd/core/services/token_service.dart';
import 'package:testabd/data/mappers.dart';
import 'package:testabd/data/remote_source/auth/auth_source.dart';
import 'package:testabd/domain/auth/auth_repository.dart';
import 'package:testabd/domain/auth/entities/register_model.dart';

@Singleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthSource _authSource;
  final SessionService _sessionService;
  final TokenService _tokenService;

  AuthRepositoryImpl(
    this._authSource,
    this._sessionService,
    this._tokenService,
  );

  @override
  Future<Either<AppException, RegisterModel>> register({
    required String username,
    required String email,
    required String password,
    String? referralCode,
  }) async {
    try {
      final result = await _authSource.register(
        username,
        email,
        password,
        referralCode,
      );
      return Right(result.toDomain());
    } on AppException catch (e) {
      return Left(e);
    } catch (e, stackTrace) {
      return Left(UnauthorizedException(e.toString(), stackTrace: stackTrace));
    }
  }

  @override
  Future<Either<AppException, Unit>> login(
    String username,
    String password,
  ) async {
    try {
      final result = await _authSource.login(username, password);
      final tokenData = TokenData(
        access: result.access ?? '',
        refresh: result.refresh ?? '',
      );
      await _tokenService.saveToken(tokenData);
      await _sessionService.saveSessionStatus(SessionStatus.authenticated);
      return Right(unit);
    } on AppException catch (e) {
      return Left(e);
    } catch (e, stackTrace) {
      return Left(UnauthorizedException(e.toString(), stackTrace: stackTrace));
    }
  }

  @override
  Future<Either<AppException, Unit>> logout() async {
    try {
      // await _accountSource.logout();
      _tokenService.clear();
      _sessionService.clear();
      return Right(unit);
    } on AppException catch (e) {
      return Left(e);
    } catch (e, stackTrace) {
      return Left(UnauthorizedException(e.toString(), stackTrace: stackTrace));
    }
  }

  @override
  Future<Either<AppException, Unit>> forgotPassword(String email) async {
    try {
      await _authSource.resendVerificationEmail(email);
      return Right(unit);
    } on AppException catch (e) {
      return Left(e);
    } catch (e, stackTrace) {
      return Left(UnauthorizedException(e.toString(), stackTrace: stackTrace));
    }
  }
}
