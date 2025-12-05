import 'package:dartz/dartz.dart';
import 'package:testabd/core/errors/app_exception.dart';
import 'package:testabd/domain/auth/entities/register_model.dart';

abstract class AuthRepository {
  Future<Either<AppException, RegisterModel>> register({
    required String username,
    required String email,
    required String password,
    String? referralCode,
  });

  Future<Either<AppException, Unit>> login(String username, String password);

  Future<Either<AppException, Unit>> logout();

  Future<Either<AppException, Unit>> forgotPassword(String email);
}
