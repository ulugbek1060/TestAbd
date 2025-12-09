// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i528;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../core/services/session_service.dart' as _i371;
import '../core/services/token_service.dart' as _i792;
import '../core/utils/dio_interceptor.dart' as _i900;
import '../data/remote_source/account/account_source.dart' as _i65;
import '../data/remote_source/account/ws_notifications_source.dart' as _i1067;
import '../data/remote_source/auth/auth_source.dart' as _i142;
import '../data/remote_source/quiz/quiz_source.dart' as _i792;
import '../data/repository/account_repository_impl.dart' as _i317;
import '../data/repository/auth_repository_impl.dart' as _i461;
import '../data/repository/quiz_repository_impl.dart' as _i75;
import '../domain/account/account_repository.dart' as _i575;
import '../domain/auth/auth_repository.dart' as _i893;
import '../domain/quiz/quiz_repository.dart' as _i156;
import '../features/auth/forgotpswd/forgot_pswd_cubit.dart' as _i36;
import '../features/auth/login/login_cubit.dart' as _i958;
import '../features/auth/register/register_cubit.dart' as _i163;
import '../features/home/followed_quiz_cubit.dart' as _i1041;
import '../features/profile/profile_cubit.dart' as _i760;
import '../features/user_profile/user_profile_cubit.dart' as _i230;
import 'app_module.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    await gh.singletonAsync<_i460.SharedPreferences>(
      () => appModule.getSharedPrefs(),
      preResolve: true,
    );
    gh.lazySingleton<_i361.BaseOptions>(
        () => appModule.provideDioBaseOptions());
    gh.lazySingleton<_i528.PrettyDioLogger>(
        () => appModule.providePrettyDioLogger());
    gh.singleton<_i792.TokenService>(
        () => _i792.SharedPrefsTokenService(gh<_i460.SharedPreferences>()));
    gh.singleton<_i371.SessionService>(
        () => _i371.SessionServiceImpl(gh<_i460.SharedPreferences>()));
    gh.factory<_i1067.WSNotificationsSource>(
        () => _i1067.WSNotificationsSourceImpl());
    gh.singleton<_i900.DioInterceptor>(
        () => _i900.DioInterceptor(gh<_i792.TokenService>()));
    gh.factory<_i361.Dio>(() => appModule.provideDio(
          gh<_i361.BaseOptions>(),
          gh<_i900.DioInterceptor>(),
          gh<_i528.PrettyDioLogger>(),
        ));
    gh.factory<_i792.QuizSource>(() => _i792.QuizSourceImpl(gh<_i361.Dio>()));
    gh.factory<_i142.AuthSource>(() => _i142.AuthSourceImpl(gh<_i361.Dio>()));
    gh.factory<_i65.AccountSource>(
        () => _i65.AccountSourceImpl(gh<_i361.Dio>()));
    gh.lazySingleton<_i156.QuizRepository>(
        () => _i75.QuizRepositoryImpl(gh<_i792.QuizSource>()));
    gh.singleton<_i893.AuthRepository>(() => _i461.AuthRepositoryImpl(
          gh<_i142.AuthSource>(),
          gh<_i371.SessionService>(),
          gh<_i792.TokenService>(),
        ));
    gh.factory<_i1041.FollowedQuizCubit>(
        () => _i1041.FollowedQuizCubit(gh<_i156.QuizRepository>()));
    gh.factory<_i760.ProfileCubit>(
        () => _i760.ProfileCubit(gh<_i893.AuthRepository>()));
    gh.factory<_i36.ForgotPswdCubit>(
        () => _i36.ForgotPswdCubit(gh<_i893.AuthRepository>()));
    gh.lazySingleton<_i575.AccountRepository>(
        () => _i317.AccountRepositoryImpl(gh<_i65.AccountSource>()));
    gh.factory<_i163.RegisterCubit>(
        () => _i163.RegisterCubit(gh<_i893.AuthRepository>()));
    gh.factory<_i958.LoginCubit>(
        () => _i958.LoginCubit(gh<_i893.AuthRepository>()));
    gh.factoryParam<_i230.UserProfileCubit, String, dynamic>((
      username,
      _,
    ) =>
        _i230.UserProfileCubit.create(
          username,
          gh<_i575.AccountRepository>(),
        ));
    return this;
  }
}

class _$AppModule extends _i460.AppModule {}
