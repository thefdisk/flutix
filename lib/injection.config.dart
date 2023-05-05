// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:flutix/application/auth/register_from/register_form_bloc.dart'
    as _i9;
import 'package:flutix/application/movie/movie_loader/movie_loader_bloc.dart'
    as _i14;
import 'package:flutix/common/api/api_client.dart' as _i10;
import 'package:flutix/common/di/di.dart' as _i15;
import 'package:flutix/common/di/image_picker_di.dart' as _i16;
import 'package:flutix/domain/auth/i_auth_repository.dart' as _i6;
import 'package:flutix/domain/movie/i_movie_repository.dart' as _i12;
import 'package:flutix/env.dart' as _i4;
import 'package:flutix/infrastructure/auth/auth_repository.dart' as _i7;
import 'package:flutix/infrastructure/movie/data_sources/remote_data_provider.dart'
    as _i11;
import 'package:flutix/infrastructure/movie/movie_repository.dart' as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i8;
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
    final firebaseAuthDi = _$FirebaseAuthDi();
    final imagePickerDi = _$ImagePickerDi();
    gh.lazySingleton<_i3.Dio>(() => dioDi.dio);
    gh.lazySingleton<_i4.Env>(
      () => _i4.DevEnv(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i4.Env>(
      () => _i4.ProdEnv(),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i5.FirebaseAuth>(() => firebaseAuthDi.auth);
    gh.factory<_i6.IAuthRepository>(
        () => _i7.AuthRepository(gh<_i5.FirebaseAuth>()));
    gh.lazySingleton<_i8.ImagePicker>(() => imagePickerDi.imagePicker);
    gh.factory<_i9.RegisterFormBloc>(
        () => _i9.RegisterFormBloc(gh<_i6.IAuthRepository>()));
    gh.lazySingleton<_i10.ApiClient>(() => _i10.ApiClient(
          gh<_i3.Dio>(),
          gh<_i4.Env>(),
        ));
    gh.factory<_i11.MovieRemoteDataProvider>(() => _i11.MovieRemoteDataProvider(
          gh<_i10.ApiClient>(),
          gh<_i4.Env>(),
        ));
    gh.factory<_i12.IMovieRepository>(
        () => _i13.MovieRepository(gh<_i11.MovieRemoteDataProvider>()));
    gh.factory<_i14.MovieLoaderBloc>(
        () => _i14.MovieLoaderBloc(gh<_i12.IMovieRepository>()));
    return this;
  }
}

class _$DioDi extends _i15.DioDi {}

class _$FirebaseAuthDi extends _i15.FirebaseAuthDi {}

class _$ImagePickerDi extends _i16.ImagePickerDi {}
