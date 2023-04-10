import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:starter/presentation/ui/viewmodels/home/home.viewmodel.dart';

///
/// [HomeViewModelProvider]
///
class HomeViewModelProvider extends StatelessWidget {

  /// Widget builder
  final Widget Function(BuildContext context, Widget? child)? builder;

  ///
  final Widget? child;

  ///
  const HomeViewModelProvider({Key? key, required this.builder, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: builder,
      create: (BuildContext context) {
        return HomeViewModel();
      },
    );
  }
}
