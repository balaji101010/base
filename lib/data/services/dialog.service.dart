
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

///
/// [DialogService]
///
@singleton
class DialogService {

  ///
  BuildContext context;

  DialogService.of(this.context);

}