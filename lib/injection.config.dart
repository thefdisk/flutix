// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:flutix/application/auth/register_from/register_form_bloc.dart'
    as _i11;
import 'package:flutix/application/movie/movie_loader/movie_loader_bloc.dart'
    as _i16;
import 'package:flutix/common/api/api_client.dart' as _i12;
import 'package:flutix/common/di/auto_router_di.dart' as _i19;
import 'package:flutix/common/di/di.dart' as _i17;
import 'package:flutix/common/di/image_picker_di.dart' as _i18;
import 'package:flutix/domain/auth/i_auth_repository.dart' as _i8;
import 'package:flutix/domain/movie/i_movie_repository.dart' as _i14;
import 'package:flutix/env.dart' as _i5;
import 'package:flutix/infrastructure/auth/auth_repository.dart' as _i9;
import 'package:flutix/infrastructure/auth/data_sources/firebase_data_provider.dart'
    as _i7;
import 'package:flutix/infrastructure/movie/data_sources/remote_data_provider.dart'
    as _i13;
import 'package:flutix/infrastructure/movie/movie_repository.dart' as _i15;
import 'package:flutix/presentation/routes/app_router.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i10;
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
    final autoRouteDi = _$AutoRouteDi();
    final dioDi = _$DioDi();
    final firebaseAuthDi = _$FirebaseAuthDi();
    final imagePickerDi = _$ImagePickerDi();
    gh.lazySingleton<_i3.AppRouter>(() => autoRouteDi.appRouter);
    gh.lazySingleton<_i4.Dio>(() => dioDi.dio);
    gh.lazySingleton<_i5.Env>(
      () => _i5.DevEnv(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i5.Env>(
      () => _i5.ProdEnv(),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i6.FirebaseAuth>(() => firebaseAuthDi.auth);
    gh.factory<_i7.FirebaseAuthDataProvider>(
        () => _i7.FirebaseAuthDataProvider(gh<_i6.FirebaseAuth>()));
    gh.factory<_i8.IAuthRepository>(() => _i9.AuthRepository(
          gh<_i6.FirebaseAuth>(),
          gh<_i7.FirebaseAuthDataProvider>(),
        ));
    gh.lazySingleton<_i10.ImagePicker>(() => imagePickerDi.imagePicker);
    gh.factory<_i11.RegisterFormBloc>(
        () => _i11.RegisterFormBloc(gh<_i8.IAuthRepository>()));
    gh.lazySingleton<_i12.ApiClient>(() => _i12.ApiClient(
          gh<_i4.Dio>(),
          gh<_i5.Env>(),
        ));
    gh.factory<_i13.MovieRemoteDataProvider>(() => _i13.MovieRemoteDataProvider(
          gh<_i12.ApiClient>(),
          gh<_i5.Env>(),
        ));
    gh.factory<_i14.IMovieRepository>(
        () => _i15.MovieRepository(gh<_i13.MovieRemoteDataProvider>()));
    gh.factory<_i16.MovieLoaderBloc>(
        () => _i16.MovieLoaderBloc(gh<_i14.IMovieRepository>()));
    return this;
  }
}

class _$DioDi extends _i17.DioDi {}

class _$FirebaseAuthDi extends _i17.FirebaseAuthDi {}

class _$ImagePickerDi extends _i18.ImagePickerDi {}

class _$AutoRouteDi extends _i19.AutoRouteDi {}
