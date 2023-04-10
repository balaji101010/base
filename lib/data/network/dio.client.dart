import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:injectable/injectable.dart';

///
/// [DioClient]
///
class DioClient extends DioForNative {

  ///
  /// [DioClient]
  ///
  DioClient._(String baseUrl) : super(BaseOptions(baseUrl: baseUrl));

  ///
  factory DioClient(String baseUrl) {
    return DioClient._(baseUrl);
  }

}
