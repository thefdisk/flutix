// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:dio/dio.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:firebase_storage/firebase_storage.dart' as _i8;
import 'package:flutix/application/auth/auth_bloc.dart' as _i17;
import 'package:flutix/application/auth/login_form/login_form_bloc.dart'
    as _i14;
import 'package:flutix/application/auth/register_form/register_form_bloc.dart'
    as _i16;
import 'package:flutix/application/movie/movie_loader/movie_loader_bloc.dart'
    as _i20;
import 'package:flutix/common/api/api_client.dart' as _i10;
import 'package:flutix/common/di/auto_router_di.dart' as _i21;
import 'package:flutix/common/di/di.dart' as _i22;
import 'package:flutix/common/di/image_picker_di.dart' as _i23;
import 'package:flutix/domain/auth/i_auth_repository.dart' as _i12;
import 'package:flutix/domain/movie/i_movie_repository.dart' as _i18;
import 'package:flutix/env.dart' as _i5;
import 'package:flutix/infrastructure/auth/auth_repository.dart' as _i13;
import 'package:flutix/infrastructure/auth/data_sources/firebase_data_provider.dart'
    as _i11;
import 'package:flutix/infrastructure/movie/data_sources/remote_data_provider.dart'
    as _i15;
import 'package:flutix/infrastructure/movie/movie_repository.dart' as _i19;
import 'package:flutix/presentation/routes/app_router.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i9;
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
    final firebaseFirestoreDi = _$FirebaseFirestoreDi();
    final firebaseStorageDi = _$FirebaseStorageDi();
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
    gh.lazySingleton<_i7.FirebaseFirestore>(() => firebaseFirestoreDi.db);
    gh.lazySingleton<_i8.FirebaseStorage>(() => firebaseStorageDi.storage);
    gh.lazySingleton<_i9.ImagePicker>(() => imagePickerDi.imagePicker);
    gh.lazySingleton<_i10.ApiClient>(() => _i10.ApiClient(
          gh<_i4.Dio>(),
          gh<_i5.Env>(),
        ));
    gh.factory<_i11.FirebaseAuthDataProvider>(
        () => _i11.FirebaseAuthDataProvider(
              gh<_i6.FirebaseAuth>(),
              gh<_i7.FirebaseFirestore>(),
              gh<_i8.FirebaseStorage>(),
            ));
    gh.factory<_i12.IAuthRepository>(
        () => _i13.AuthRepository(gh<_i11.FirebaseAuthDataProvider>()));
    gh.factory<_i14.LoginFormBloc>(
        () => _i14.LoginFormBloc(gh<_i12.IAuthRepository>()));
    gh.factory<_i15.MovieRemoteDataProvider>(() => _i15.MovieRemoteDataProvider(
          gh<_i10.ApiClient>(),
          gh<_i5.Env>(),
        ));
    gh.factory<_i16.RegisterFormBloc>(
        () => _i16.RegisterFormBloc(gh<_i12.IAuthRepository>()));
    gh.factory<_i17.AuthBloc>(() => _i17.AuthBloc(gh<_i12.IAuthRepository>()));
    gh.factory<_i18.IMovieRepository>(
        () => _i19.MovieRepository(gh<_i15.MovieRemoteDataProvider>()));
    gh.factory<_i20.MovieLoaderBloc>(
        () => _i20.MovieLoaderBloc(gh<_i18.IMovieRepository>()));
    return this;
  }
}

class _$AutoRouteDi extends _i21.AutoRouteDi {}

class _$DioDi extends _i22.DioDi {}

class _$FirebaseAuthDi extends _i22.FirebaseAuthDi {}

class _$FirebaseFirestoreDi extends _i22.FirebaseFirestoreDi {}

class _$FirebaseStorageDi extends _i22.FirebaseStorageDi {}

class _$ImagePickerDi extends _i23.ImagePickerDi {}
