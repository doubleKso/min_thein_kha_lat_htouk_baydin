import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lat_htauk_bay_din/core/core.dart';
import 'package:lat_htauk_bay_din/core/extensions/extensions.dart';
import 'package:lat_htauk_bay_din/domain/domain.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../presentation.dart';

class LatHtaukPage extends StatelessWidget {
  final Question question;
  const LatHtaukPage({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return LatHtaukPageBody(
      question: question,
    );
  }
}

class LatHtaukPageBody extends StatefulWidget {
  final Question question;

  const LatHtaukPageBody({super.key, required this.question});

  @override
  State<LatHtaukPageBody> createState() => _LatHtaukPageBodyState();
}

class _LatHtaukPageBodyState extends State<LatHtaukPageBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              widget.question.questionName ?? "",
              style: context.getTitleMedium,
              textAlign: TextAlign.center,
            ),
          ),
          BlocBuilder<QABloc, QAState>(
            builder: (context, state) {
              var numberList = (state.qaModel?.numberList ?? [])..shuffle();
              return Expanded(
                  child: GridView.builder(
                itemCount: numberList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 9 / 12, crossAxisCount: 9),
                itemBuilder: (context, index) {
                  return ZoomTapAnimation(
                    onTap: () {
                      int answerNumber =
                          NumberConverter.number(numberList[index]);

                      /// checking the data
                      var answer = state.qaModel?.answerList
                          ?.where((element) => element.answerNo == answerNumber)
                          .where((element) =>
                              element.questionNo == widget.question.questionNo)
                          .first;

                      context.push(Routes.answerPage, extra: answer);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: context.secondary,
                          border:
                              Border.all(width: 0.5, color: Colors.lightBlue)),
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          numberList[index],
                          style: context.getBodyMedium
                              ?.copyWith(color: Colors.yellow),
                        ),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ]),
      ),
    );
  }
}
