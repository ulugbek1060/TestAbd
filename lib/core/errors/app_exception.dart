import 'dart:math';

import 'package:dio/dio.dart';

extension DioExceptionTypeX on DioException {
  AppException handleDioException() {
    switch (type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return TimeoutException("Connection timed out");

      case DioExceptionType.connectionError:
        return NetworkException("No internet connection");

      case DioExceptionType.badResponse:
        final status = response?.statusCode;

        if (status == 400) {
          return BadRequestException(
            response?.data.toString() ?? "Bad request",
            code: status,
          );
        } else if (status == 401) {
          return UnauthorizedException("Unauthorized access", code: status);
        } else if (status == 404) {
          return NotFoundException("Resource not found", code: status);
        } else if (status != null && status >= 500) {
          return ServerException("Server error", code: status);
        }

        return ServerException("Unexpected server error", code: status);

      case DioExceptionType.cancel:
        return UnknownException("Request cancelled");

      case DioExceptionType.badCertificate:
        return UnknownException("Bad SSL Certificate");

      case DioExceptionType.unknown:
        if (message?.contains("SocketException") ?? false) {
          return NetworkException("No Internet connection");
        }
        return UnknownException(message ?? "Unknown error");
    }
  }
}

extension ObjectX on Object {
  AppException toAppException() => UnauthorizedException(toString());
}

abstract class AppException implements Exception {
  final String message;
  final int? code;

  const AppException(this.message, {this.code});

  @override
  String toString() => "$runtimeType: $message (code: $code)";
}

class NetworkException extends AppException {
  const NetworkException(super.message);
}

class TimeoutException extends AppException {
  const TimeoutException(super.message);
}

class ServerException extends AppException {
  const ServerException(super.message, {super.code});
}

class BadRequestException extends AppException {
  const BadRequestException(super.message, {super.code});
}

class UnauthorizedException extends AppException {
  const UnauthorizedException(super.message, {super.code});
}

class NotFoundException extends AppException {
  const NotFoundException(super.message, {super.code});
}

class UnknownException extends AppException {
  const UnknownException(super.message);
}
