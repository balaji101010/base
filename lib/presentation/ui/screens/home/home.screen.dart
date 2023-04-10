import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:starter/data/abstracts/abstract.viewmodel.dart';
import 'package:starter/presentation/styles/global.styles.dart';
import 'package:starter/presentation/styles/text_variants.dart';
import 'package:starter/presentation/ui/viewmodels/home/home.viewmodel.dart';
import 'package:starter/presentation/ui/viewmodels/home/home_viewmodel.provider.dart';

@RoutePage(name: 'HomeScreen')
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeViewModelProvider(builder: (_, __) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: const _HomeBody(),
      );
    });
  }
}

///
/// private widget
///
class _HomeBody extends StatelessWidget {
  const _HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeViewModel viewModel = ViewModel.watch<HomeViewModel>(context);
    ColorScheme colorScheme = GlobalTheme.getColorScheme(context);
    return InkWell(
      onTap: () {
        viewModel.setLoading();
      },
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: viewModel.state.isLoading
                  ? const CircularProgressIndicator()
                  :  TextVariant(
                      color: colorScheme.errorContainer,
                      data: 'Home',
                      variantType: TextVariantType.titleLarge),
            ),
          ],
        ),
      ),
    );
  }
}
