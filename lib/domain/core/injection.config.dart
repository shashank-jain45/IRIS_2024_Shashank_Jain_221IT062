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
    as _i25;
import 'package:mess_management_app/application/auth/currentAuthStateOfUser/auth_bloc.dart'
    as _i27;
import 'package:mess_management_app/application/dashboard/bloc/user_repository_bloc.dart'
    as _i26;
import 'package:mess_management_app/application/mess_balance/bloc/mess_balance_repository_bloc.dart'
    as _i19;
import 'package:mess_management_app/application/mess_details/bloc/mess_details_bloc.dart'
    as _i20;
import 'package:mess_management_app/application/mess_reallocation/bloc/mess_reallocation_bloc.dart'
    as _i21;
import 'package:mess_management_app/application/mess_reallocation/mess_reallocation_request/bloc/mess_reallocation_request_bloc.dart'
    as _i22;
import 'package:mess_management_app/application/mess_registration/bloc/mess_registration_bloc.dart'
    as _i23;
import 'package:mess_management_app/application/mess_user_info/bloc/mess_user_info_bloc.dart'
    as _i24;
import 'package:mess_management_app/domain/auth/i_auth_facade.dart' as _i5;
import 'package:mess_management_app/domain/dashboard/i_user_data_facade.dart'
    as _i17;
import 'package:mess_management_app/domain/mess_balance/i_mess_balance_repository_facade.dart'
    as _i7;
import 'package:mess_management_app/domain/mess_details/i_mess_details_repository.dart'
    as _i9;
import 'package:mess_management_app/domain/mess_reallocation/i_mess_reallocation_repository_facade.dart'
    as _i11;
import 'package:mess_management_app/domain/mess_registration/i_mess_registration_repository_facade.dart'
    as _i13;
import 'package:mess_management_app/domain/mess_user_info/i_mess_user_info_facade.dart'
    as _i15;
import 'package:mess_management_app/infrastructure/auth/i_auth_facade_implementation.dart'
    as _i6;
import 'package:mess_management_app/infrastructure/core/firebase_injectable.dart'
    as _i28;
import 'package:mess_management_app/infrastructure/dashboard/firestore_user_data.dart'
    as _i18;
import 'package:mess_management_app/infrastructure/mess_balance/mess_balance_repository.dart'
    as _i8;
import 'package:mess_management_app/infrastructure/mess_details/mess_details_repository.dart'
    as _i10;
import 'package:mess_management_app/infrastructure/mess_reallocation/mess_reallocation_repository.dart'
    as _i12;
import 'package:mess_management_app/infrastructure/mess_registration/mess_registration_repository.dart'
    as _i14;
import 'package:mess_management_app/infrastructure/mess_user_info/mess_user_info_repository.dart'
    as _i16;

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
    gh.factory<_i7.IMessBalanceRepositoryFacade>(
        () => _i8.MessBalanceRepository(
              gh<_i4.FirebaseFirestore>(),
              gh<_i3.FirebaseAuth>(),
            ));
    gh.factory<_i9.IMessDetailsRepositoryFacade>(
        () => _i10.MessDetailsRepositoryFacade(gh<_i4.FirebaseFirestore>()));
    gh.lazySingleton<_i11.IMessReallocationRepositoryFacade>(
        () => _i12.MessReallocationRepository(
              gh<_i4.FirebaseFirestore>(),
              gh<_i3.FirebaseAuth>(),
            ));
    gh.lazySingleton<_i13.IMessRegistrationRepositoryFacade>(
        () => _i14.MessRegistration(
              gh<_i4.FirebaseFirestore>(),
              gh<_i3.FirebaseAuth>(),
            ));
    gh.lazySingleton<_i15.IMessUserInfoFacade>(
        () => _i16.MessUserInfoRepository(gh<_i4.FirebaseFirestore>()));
    gh.lazySingleton<_i17.IUserDataFacade>(() => _i18.FirestoreUserData(
          gh<_i4.FirebaseFirestore>(),
          gh<_i3.FirebaseAuth>(),
        ));
    gh.factory<_i19.MessBalanceRepositoryBloc>(() =>
        _i19.MessBalanceRepositoryBloc(gh<_i7.IMessBalanceRepositoryFacade>()));
    gh.factory<_i20.MessDetailsBloc>(
        () => _i20.MessDetailsBloc(gh<_i9.IMessDetailsRepositoryFacade>()));
    gh.factory<_i21.MessReallocationBloc>(() => _i21.MessReallocationBloc(
        gh<_i11.IMessReallocationRepositoryFacade>()));
    gh.factory<_i22.MessReallocationRequestBloc>(
        () => _i22.MessReallocationRequestBloc(gh<_i17.IUserDataFacade>()));
    gh.factory<_i23.MessRegistrationBloc>(() => _i23.MessRegistrationBloc(
        gh<_i13.IMessRegistrationRepositoryFacade>()));
    gh.factory<_i24.MessUserInfoBloc>(
        () => _i24.MessUserInfoBloc(gh<_i15.IMessUserInfoFacade>()));
    gh.factory<_i25.SignInBloc>(() => _i25.SignInBloc(gh<_i5.IAuthFacade>()));
    gh.factory<_i26.UserRepositoryBloc>(
        () => _i26.UserRepositoryBloc(gh<_i17.IUserDataFacade>()));
    gh.factory<_i27.AuthBloc>(() => _i27.AuthBloc(gh<_i5.IAuthFacade>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i28.FirebaseInjectableModule {}
