import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:starter/data/network/dio.client.dart';

@module
abstract class InjectorModule {

  @Named('baseUrl')
  String get baseUrl => 'https://www.baalji.com/';

  @lazySingleton
  DioClient dio(@Named('BaseUrl') String url) => DioClient(url);

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

}
