// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:mess_management_app/application/auth/bloc/sign_in_bloc.dart'
    as _i12;
import 'package:mess_management_app/application/auth/currentAuthStateOfUser/auth_bloc.dart'
    as _i14;
import 'package:mess_management_app/application/dashboard/bloc/user_repository_bloc.dart'
    as _i13;
import 'package:mess_management_app/application/mess_balance/bloc/mess_balance_repository_bloc.dart'
    as _i11;
import 'package:mess_management_app/domain/auth/i_auth_facade.dart' as _i5;
import 'package:mess_management_app/domain/dashboard/i_user_data_facade.dart'
    as _i9;
import 'package:mess_management_app/domain/mess_balance/i_mess_balance_repository_facade.dart'
    as _i7;
import 'package:mess_management_app/infrastructure/auth/i_auth_facade_implementation.dart'
    as _i6;
import 'package:mess_management_app/infrastructure/core/firebase_injectable.dart'
    as _i15;
import 'package:mess_management_app/infrastructure/dashboard/firestore_user_data.dart'
    as _i10;
import 'package:mess_management_app/infrastructure/mess_balance/mess_balance_repository.dart'
    as _i8;

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
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.lazySingleton<_i3.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i4.FirebaseFirestore>(
        () => firebaseInjectableModule.firestore);
    gh.lazySingleton<_i5.IAuthFacade>(
        () => _i6.FirebaseAuthFacade(gh<_i3.FirebaseAuth>()));
    gh.factory<_i7.IMessBalanceRepository>(() => _i8.MessBalanceRepository(
          gh<_i4.FirebaseFirestore>(),
          gh<_i3.FirebaseAuth>(),
        ));
    gh.lazySingleton<_i9.IUserDataFacade>(() => _i10.FirestoreUserData(
          gh<_i4.FirebaseFirestore>(),
          gh<_i3.FirebaseAuth>(),
        ));
    gh.factory<_i11.MessBalanceRepositoryBloc>(
        () => _i11.MessBalanceRepositoryBloc(gh<_i7.IMessBalanceRepository>()));
    gh.factory<_i12.SignInBloc>(() => _i12.SignInBloc(gh<_i5.IAuthFacade>()));
    gh.factory<_i13.UserRepositoryBloc>(
        () => _i13.UserRepositoryBloc(gh<_i9.IUserDataFacade>()));
    gh.factory<_i14.AuthBloc>(() => _i14.AuthBloc(gh<_i5.IAuthFacade>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i15.FirebaseInjectableModule {}
