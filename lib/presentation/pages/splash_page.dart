import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lat_htauk_bay_din/core/core.dart';
import 'package:lat_htauk_bay_din/core/extensions/extensions.dart';

import '../bloc/bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SplashPageBody();
  }
}

class SplashPageBody extends StatefulWidget {
  const SplashPageBody({super.key});

  @override
  State<SplashPageBody> createState() => _SplashPageBodyState();
}

class _SplashPageBodyState extends State<SplashPageBody> {
  @override
  void initState() {
    context.read<QABloc>().add(FetchQandA());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<QABloc, QAState>(
      listener: (context, state) {
        if (state.status == QAStatus.data) {
          context.go(Routes.questionPage, extra: state.qaModel);
        }
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/images/min_thein_kha.jpeg",
                width: 140,
                height: 140,
              ),
              10.gap(),
              const Text("လက်ထောက်ဗေဒင်"),
              30.gap(),
              BlocBuilder<QABloc, QAState>(builder: (context, state) {
                if (state.status == QAStatus.loading) {
                  return const CircularProgressIndicator();
                }

                return const SizedBox();
              }),
            ],
          ),
        ),
      ),
    );
  }
}
