import 'package:brinch_with_bloc/core/common/global_indicator_widget.dart';
import 'package:brinch_with_bloc/future/splash/bloc/splash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final SplashBloc _newsBloc = SplashBloc();

  @override
  void initState() {
    _newsBloc.add(GetDogList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) => _newsBloc,
      child: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state is SplashError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message!),
              ),
            );
          } else if (state is SplashLoaded) {
            context.goNamed(
              'home',
              extra: state.dogModel,
            );
          }
        },
        child: BlocBuilder<SplashBloc, SplashState>(
          builder: (context, state) {
            if (state is SplashInitial) {
              return const GlobalIndicatorWidget();
            } else if (state is SplashLoading) {
              return const GlobalIndicatorWidget();
            } else if (state is SplashError) {
              return Container();
            } else {
              return Container();
            }
          },
        ),
      ),
    ));
  }
}
