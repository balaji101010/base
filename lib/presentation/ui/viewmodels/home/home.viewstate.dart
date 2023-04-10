import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:starter/data/abstracts/abstract.viewmodel.dart';

part 'home.viewstate.g.dart';

@CopyWith()
class HomeViewState extends ViewState {
  final bool isLoading;

  ///
  HomeViewState({required this.isLoading});

  ///
  /// Named Constructor for initial state
  ///
  HomeViewState.initial() : isLoading = false;

  ///
  /// Props
  ///
  @override
  List<Object?> get props => [isLoading];
}
