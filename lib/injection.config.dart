// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:flutix/application/auth/register_from/register_form_bloc.dart'
    as _i8;
import 'package:flutix/application/movie/movie_loader/movie_loader_bloc.dart'
    as _i13;
import 'package:flutix/common/api/api_client.dart' as _i9;
import 'package:flutix/common/di/di.dart' as _i14;
import 'package:flutix/domain/auth/i_auth_repository.dart' as _i5;
import 'package:flutix/domain/movie/i_movie_repository.dart' as _i11;
import 'package:flutix/env.dart' as _i4;
import 'package:flutix/infrastructure/auth/auth_repository.dart' as _i6;
import 'package:flutix/infrastructure/movie/data_sources/remote_data_provider.dart'
    as _i10;
import 'package:flutix/infrastructure/movie/movie_repository.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioDi = _$DioDi();
    gh.lazySingleton<_i3.Dio>(() => dioDi.dio);
    gh.lazySingleton<_i4.Env>(
      () => _i4.DevEnv(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i4.Env>(
      () => _i4.ProdEnv(),
      registerFor: {_prod},
    );
    gh.factory<_i5.IAuthRepository>(
        () => _i6.AuthRepository(gh<_i7.FirebaseAuth>()));
    gh.factory<_i8.RegisterFormBloc>(
        () => _i8.RegisterFormBloc(gh<_i5.IAuthRepository>()));
    gh.lazySingleton<_i9.ApiClient>(() => _i9.ApiClient(
          gh<_i3.Dio>(),
          gh<_i4.Env>(),
        ));
    gh.factory<_i10.MovieRemoteDataProvider>(() => _i10.MovieRemoteDataProvider(
          gh<_i9.ApiClient>(),
          gh<_i4.Env>(),
        ));
    gh.factory<_i11.IMovieRepository>(
        () => _i12.MovieRepository(gh<_i10.MovieRemoteDataProvider>()));
    gh.factory<_i13.MovieLoaderBloc>(
        () => _i13.MovieLoaderBloc(gh<_i11.IMovieRepository>()));
    return this;
  }
}

class _$DioDi extends _i14.DioDi {}
