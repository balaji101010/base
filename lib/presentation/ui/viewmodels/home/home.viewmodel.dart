import 'package:starter/data/abstracts/abstract.viewmodel.dart';
import 'package:starter/presentation/ui/viewmodels/home/home.viewstate.dart';

class HomeViewModel extends ViewModel<HomeViewModel, HomeViewState> {

  ///
  HomeViewModel() : super(HomeViewState.initial());

  ///
  void setLoading() async {
    setState(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(seconds: 2));
    setState(state.copyWith(isLoading: false));
  }

}
