// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import '../network/dio.client.dart' as _i3;
import 'modules.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectorModule = _$InjectorModule();
    gh.lazySingleton<_i3.DioClient>(
        () => injectorModule.dio(gh<String>(instanceName: 'BaseUrl')));
    await gh.factoryAsync<_i4.SharedPreferences>(
      () => injectorModule.prefs,
      preResolve: true,
    );
    gh.factory<String>(
      () => injectorModule.baseUrl,
      instanceName: 'baseUrl',
    );
    return this;
  }
}

class _$InjectorModule extends _i5.InjectorModule {}
